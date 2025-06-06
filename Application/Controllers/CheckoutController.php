<?php

class CheckoutController extends BaseController
{
    protected $productModel;
    protected $cart;
    protected $orderModel;
    protected $orderDetail;
    protected $banners;
    protected $bannerModel;
    protected $couponModel;
    protected $userModel;
    protected $coupon;
    protected $payos;

    public function __construct()
    {
        $this->loadHelper('CartHelper');
        $this->cart = new CartHelper;
        $this->loadModel('ProductModel');
        $this->productModel = new ProductModel;
        $this->loadModel('OrderModel');
        $this->orderModel = new OrderModel;
        $this->loadModel('OrderDetail');
        $this->orderDetail = new OrderDetail;
        $this->loadModel('BannerModel');
        $this->bannerModel = new BannerModel;
        $this->banners = $this->bannerModel->findBannerBySite('Checkout');
        $this->loadModel('CouponModel');
        $this->couponModel = new CouponModel;
        $this->loadModel('UserModel');
        $this->userModel = new UserModel;

        $this->loadHelper('PayosHelper');
        $this->payos = new PayosHelper();
    }

    public function index()
    {
        $user = !empty($_SESSION['user']) ? $this->userModel->findUserById(['*'], $_SESSION['user']['id']) : null;
        $_SESSION['coupon'] = empty($_SESSION['coupon']) ? null : $_SESSION['coupon'];
        return $this->view('site.checkout.checkout', [
            'cart' => $this->cart,
            'banners' => $this->banners,
            'user' => $user
        ]);
    }

    public function process()
    {
        $data = [
            "fname" => $_POST["fname"],
            "lname" => $_POST["lname"],
            "email" => $_POST["email"],
            "phone" => $_POST["phone"],
            "province" => $_POST["province"],
            "address" => $_POST["address"],
            "note" => $_POST["note"],
            "delivery" => $_POST["delivery"],
            "payment" => $_POST["payment"],
            "account_id" => $_SESSION["user"]["id"],
            "coupon" => $_SESSION["coupon"],

            // tinh total từ frontend
            "total" => $_POST["total"]
        ];

        // store order
        $order = null;
        if (!empty($this->cart)) {
            $order = $this->orderModel->store($data);
            // 2. Luu gio hang vao order detail
            $order["items"] = [];
            foreach ($this->cart->items as $item) {
                if ($item['checked'] == 'true') {
                    $detail = [
                        'order_id' => $order["id"],
                        'product_id' => $item['id'],
                        'quantity' => $item['quantity'],
                        'price' => $item['price_sum']
                    ];
                    array_push($order["items"], [
                        'name' => $item['name'],
                        'quantity' => (int) $item['quantity'],
                        'price' => (int)($item['price_sum']  * 26000)
                    ]);
                    $this->orderDetail->store($detail);
                }
            }
        }

        // -1 so luong su dung coupon
        $coupon = $this->couponModel->getCouponDetailById($_SESSION["coupon_id"]);
        if (!empty($coupon)) {
            $status = ($coupon["used_times"] == 1) ? 0 : 1;
            $used_times = $coupon["used_times"] - 1;

            $coupon_data = [
                'status' => $status,
                'used_times' => $used_times,
                'updated_at' => date("Y-m-d", time())
            ];
            $this->couponModel->updateDataAfterCheckout($coupon["id"], $coupon_data);
        }

        // clear cart and session data
        $this->cart->clear();
        $_SESSION["coupon"] = 0;
        $_SESSION["coupon_id"] = "";

        // Nếu là đơn hàng từ chức năng "Mua ngay" và có giỏ hàng tạm
        if (!empty($_SESSION['temp_cart'])) {
            // Khôi phục giỏ hàng cũ
            $_SESSION['cart'] = $_SESSION['temp_cart'];
            unset($_SESSION['temp_cart']);
        }

        // thanh toán
        if ($data["payment"] == "Banking") {
            $url = $this->createPaymentUrl($order);

            $payment['payment_link'] = $url;
            $this->orderModel->updateData($order['id'], $payment);

            header("HTTP/1.1 303 See Other");
            header("Location: " . $url);
        } else {
            // Đơn hàng COD đã được xử lý thành công
            // Chuyển đến trang chi tiết đơn hàng
            header('location: ./customer/order/detail/' . $order["id"]);
        }
    }

    public function validate($data)
    {
        $isValid = false;
    }


    public function success()
    {
        // Xử lý đơn hàng thành công

        // Khôi phục giỏ hàng cũ nếu có
        if (!empty($_SESSION['temp_cart'])) {
            $_SESSION['cart'] = $_SESSION['temp_cart'];
            unset($_SESSION['temp_cart']);
        }

        // Chuyển đến trang thông báo thành công
        $id = $_GET['orderCode'];
        $order["payment_status"] = 1;
        $this->orderModel->updateData($id, $order);
        return $this->view('site.checkout.success');
    }
    public function cancelPayment()
    {
        $id = $_GET['orderCode'];
        $order["status"] = 3;
        $this->orderModel->updateData($id, $order);
        return $this->view('site.checkout.cancel');
    }

    public function cancel()
    {
        // Khôi phục giỏ hàng cũ nếu có
        if (!empty($_SESSION['temp_cart'])) {
            $_SESSION['cart'] = $_SESSION['temp_cart'];
            unset($_SESSION['temp_cart']);
        }

        // Nếu có ID sản phẩm trước đó, chuyển về trang chi tiết sản phẩm đó
        if (!empty($_SESSION['previous_product_id'])) {
            $product_id = $_SESSION['previous_product_id'];
            unset($_SESSION['previous_product_id']);
            header('location: ./?controller=product&action=productDetail&id=' . $product_id);
            return;
        }

        // Nếu không có thông tin sản phẩm trước đó, chuyển về trang giỏ hàng
        header('location: ./?controller=cart');
    }

    public function createPaymentUrl($data)
    {
        return $this->payos->createPaymentLink($data);
    }

    public function buyNowCheckout()
    {
        // Kiểm tra có sản phẩm mua ngay không
        if (empty($_SESSION['buy_now_product'])) {
            header('location: ./');
            return;
        }

        $user = !empty($_SESSION['user']) ? $this->userModel->findUserById(['*'], $_SESSION['user']['id']) : null;

        // Khởi tạo coupon session nếu chưa có
        $_SESSION['coupon'] = empty($_SESSION['coupon']) ? 0 : $_SESSION['coupon'];

        // Tạo đối tượng giả cho cart để sử dụng chung view
        $buy_now_cart = new \stdClass();
        $buy_now_cart->items = [$_SESSION['buy_now_product']];
        $buy_now_cart->total_quantity = 1;
        $buy_now_cart->total_price = $_SESSION['buy_now_product']['price'];

        return $this->view('site.checkout.checkout', [
            'cart' => $buy_now_cart,
            'banners' => $this->banners,
            'user' => $user,
            'is_buy_now' => true,
            'product_id' => $_SESSION['buy_now_product']['id']
        ]);
    }

    public function processBuyNow()
    {
        // Kiểm tra có sản phẩm mua ngay không
        if (empty($_SESSION['buy_now_product'])) {
            header('location: ./');
            return;
        }

        $buy_now_product = $_SESSION['buy_now_product'];

        // Tính total có áp dụng coupon
        $total = $buy_now_product['price'];
        $coupon_value = isset($_SESSION['coupon']) ? $_SESSION['coupon'] : 0;

        // Áp dụng coupon nếu có
        if ($coupon_value != 0) {
            $total = $total * (1 - $coupon_value);
        }

        // Thêm phí vận chuyển
        $total += 2;

        $data = [
            "fname" => $_POST["fname"],
            "lname" => $_POST["lname"],
            "email" => $_POST["email"],
            "phone" => $_POST["phone"],
            "province" => $_POST["province"],
            "address" => $_POST["address"],
            "note" => $_POST["note"],
            "delivery" => $_POST["delivery"],
            "payment" => $_POST["payment"],
            "account_id" => $_SESSION["user"]["id"],
            "coupon" => $coupon_value, // Áp dụng coupon từ session
            "total" => $total // Tính total có coupon
        ];

        // Lưu đơn hàng
        $order = $this->orderModel->store($data);

        // Lưu chi tiết đơn hàng
        $order["items"] = [];
        $detail = [
            'order_id' => $order["id"],
            'product_id' => $buy_now_product['id'],
            'quantity' => 1,
            'price' => $buy_now_product['price']
        ];

        array_push($order["items"], [
            'name' => $buy_now_product['name'],
            'quantity' => 1,
            'price' => (int)($buy_now_product['price'] * 26000)
        ]);

        $this->orderDetail->store($detail);

        // Xử lý coupon như checkout bình thường
        if (!empty($_SESSION["coupon_id"])) {
            $coupon = $this->couponModel->getCouponDetailById($_SESSION["coupon_id"]);
            if (!empty($coupon)) {
                $status = ($coupon["used_times"] == 1) ? 0 : 1;
                $used_times = $coupon["used_times"] - 1;

                $coupon_data = [
                    'status' => $status,
                    'used_times' => $used_times,
                    'updated_at' => date("Y-m-d", time())
                ];
                $this->couponModel->updateDataAfterCheckout($coupon["id"], $coupon_data);
            }
        }

        // Clear coupon session sau khi sử dụng
        $_SESSION["coupon"] = 0;
        $_SESSION["coupon_id"] = "";

        // Xóa session mua ngay
        unset($_SESSION['buy_now_product']);

        // Xử lý thanh toán như bình thường
        if ($data["payment"] == "Banking") {
            $url = $this->createPaymentUrl($order);
            $payment['payment_link'] = $url;
            $this->orderModel->updateData($order['id'], $payment);

            header("HTTP/1.1 303 See Other");
            header("Location: " . $url);
        } else {
            header('location: ./customer/order/detail/' . $order["id"]);
        }
    }

    public function cancelBuyNow()
    {
        // Xóa session mua ngay
        unset($_SESSION['buy_now_product']);

        // Chuyển về trang sản phẩm nếu có id sản phẩm
        if (!empty($_GET['product_id'])) {
            header('location: ./?controller=product&action=productDetail&id=' . $_GET['product_id']);
        } else {
            header('location: ./?controller=product&action=allProducts');
        }
    }
}
