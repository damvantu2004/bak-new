<?php
require_once './Application/Models/UserCartModel.php';

class CartHelper // dung de tach phan add ben controller sang helper
{


    public $items = [];
    public $total_quantity = 0;
    public $total_price = 0;
    public $discount = 0;
    protected $userCartModel;
    protected $isLoggedIn = false;
    protected $userId = null;
    public $total_quantity_check = 0;
    public function __construct()
    {
        // Kiểm tra người dùng đã đăng nhập chưa
        $this->isLoggedIn = !empty($_SESSION['user']);
        if ($this->isLoggedIn) {
            $this->userId = $_SESSION['user']['id'];
            $this->userCartModel = new UserCartModel();
        }

        // giup khi an add moi thi items van con item chu khong khoi tao items lai tu dau
        $this->items = empty($_SESSION['cart'])  ? [] : $_SESSION['cart'];
        $this->get_total_quantity();
        $this->total_price = $this->get_total_price();
    }

    // Đồng bộ giỏ hàng từ database khi đăng nhập
    public function syncFromDatabase()
    {
        if (!$this->isLoggedIn) return;

        require_once './Application/Models/ProductModel.php';
        $productModel = new ProductModel();

        $userCart = $this->userCartModel->getUserCart($this->userId);

        // Giữ lại giỏ hàng session hiện tại
        $sessionCart = $this->items;

        foreach ($userCart as $item) {
            $product = $productModel->findProductById(['*'], $item['product_id']);

            // Bỏ qua nếu sản phẩm không tồn tại
            if (empty($product)) continue;

            // Cập nhật nếu sản phẩm đã có trong session
            if (isset($sessionCart[$item['product_id']])) {
                $sessionCart[$item['product_id']]['quantity'] += $item['quantity'];
                $sessionCart[$item['product_id']]['price_sum'] = $sessionCart[$item['product_id']]['price']
                    * $sessionCart[$item['product_id']]['quantity'];
                $sessionCart[$item['product_id']]['checked'] = false;
            } else {
                // Thêm sản phẩm mới vào session
                $cartItem = [
                    'checked' => false,
                    'id' => $product['id'],
                    'name' => $product['name'],
                    'image' => $product['image'],
                    'quantity' => $item['quantity'],
                    'price' => $product['sale_price'] > 0 ? $product['sale_price'] : $product['price'],
                    'price_sum' => ($product['sale_price'] > 0 ? $product['sale_price'] : $product['price']) * $item['quantity']
                ];
                $sessionCart[$product['id']] = $cartItem;
            }
        }

        // Cập nhật lại giỏ hàng session
        $this->items = $sessionCart;
        $_SESSION['cart'] = $this->items;
        $this->get_total_quantity();
        $this->total_price = $this->get_total_price();
    }

    // Đồng bộ giỏ hàng lên database khi đăng xuất
    public function syncToDatabase()
    {
        if (!$this->isLoggedIn) return;

        // Xóa giỏ hàng cũ trong database
        $this->userCartModel->deleteUserCart($this->userId);

        // Lưu giỏ hàng hiện tại vào database
        foreach ($this->items as $item) {
            $this->userCartModel->addToCart($this->userId, $item['id'], $item['quantity']);
        }
    }

    public function add($product, $quantity = 1)
    {
        // $quantity = isset($_GET['quantity']) ? (int) $_GET['quantity'] : 1;

        if (isset($this->items[$product['id']])) {
            $this->items[$product['id']]['quantity'] += $quantity; // them 1 san pham vao so luong san co trong cart
            $this->items[$product['id']]['price_sum'] = $this->items[$product['id']]['price'] * $this->items[$product['id']]['quantity'];
        } else {
            // them 1 san pham neu chua co sp nao trong cart
            $item = [
                'checked' => false,
                'id' => $product['id'],
                'name' => $product['name'],
                'image' => $product['image'],
                'quantity' => $quantity,
                'price' => $product['sale_price'] >  0 ? $product['sale_price'] : $product['price'], // de y sale_price check neu co sale price
                'price_sum' => ($product['sale_price'] >  0 ? $product['sale_price'] : $product['price']) * $quantity
            ];
            $this->items[$product['id']] = $item;  // product id lam key
        }
        $_SESSION['cart'] = $this->items; // luu session key cart luu toan bo item, de khi add item khac thi item add trc do van con trong cart
        $this->get_total_quantity();
        $this->total_price = $this->get_total_price();

        // Đồng bộ lên database nếu đã đăng nhập
        if ($this->isLoggedIn) {
            $this->userCartModel->addToCart($this->userId, $product['id'], $quantity);
        }
    }

    // mỗi khi bấm checked thì sẽ gọi ajax

    public function delete($id)
    {
        if (isset($this->items[$id])) {
            unset($this->items[$id]);
            $_SESSION['cart'] = $this->items;
            $this->get_total_quantity();
            $this->total_price = $this->get_total_price();


            // Đồng bộ lên database nếu đã đăng nhập
            if ($this->isLoggedIn) {
                $this->userCartModel->deleteCartItem($this->userId, $id);
            }
        }
    }

    public function clear()
    {
        $itemsUnchecked = [];
        $itemChecked = [];

        // giữ lại các sản phẩm không được chọn

        foreach ($this->items as $item) {
            $isChecked = isset($item['checked']) && $item['checked'] === 'true';
            if (!$isChecked) {
                $itemsUnchecked[$item['id']] = $item;
            } else {
                $itemChecked[$item['id']] = $item;
            }
        }

        $_SESSION['total_quantity'] = $this->total_quantity - $this->total_quantity_check;
        $_SESSION['cart'] = $itemsUnchecked;
        // Đồng bộ lên database nếu đã đăng nhập, xóa các sản phẩm đã tạo hóa đơn
        if ($this->isLoggedIn) {
            foreach ($itemChecked as $item) {
                $this->userCartModel->deleteUserCartVip($this->userId, $item['id']);
            }
        }
    }

    public function update($id, $quantity)
    {
        if (isset($this->items[$id])) {
            $this->items[$id]['quantity'] = $quantity;
            $this->items[$id]['price_sum'] = $this->items[$id]['price'] * $this->items[$id]['quantity'];
            $_SESSION['cart'] = $this->items;
            $this->get_total_quantity();

            // Đồng bộ lên database nếu đã đăng nhập
            if ($this->isLoggedIn) {
                $this->userCartModel->updateCartItemQuantity($this->userId, $id, $quantity);
            }
        }
    }


    private function get_total_quantity()
    {
        $total_quantity = 0;
        $total_quantity_check = 0;
        foreach ($this->items as $item) {
            if ($item['checked'] == 'true') {
                $total_quantity_check += $item['quantity'];
            }
            $total_quantity += 1;
        }
        $this->total_quantity = $total_quantity;
        $this->total_quantity_check = $total_quantity_check;
        $_SESSION['total_quantity'] = $this->total_quantity;

        // return $this->total_quantity;
    }

    public function get_total_price()
    {
        $price = 0;
        foreach ($this->items as $item) {
            if ($item['checked'] == 'true') {
                $price += $item['quantity'] * $item['price'];
            }
        }
        return $price;
    }


    // đánh dấu sản phẩm
    public function checkItem($id, $isChecked)
    {
        if (isset($this->items[$id])) {
            $this->items[$id]['checked'] = $isChecked;
            $_SESSION['cart'] = $this->items;
        }
    }
}
