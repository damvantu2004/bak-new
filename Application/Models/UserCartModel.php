<?php
class UserCartModel extends BaseModel
{
    protected $table = 'user_cart';

    public function __construct()
    {
        parent::__construct();
    }

    // Lấy giỏ hàng của người dùng
    public function getUserCart($userId)
    {
        $sql = "SELECT * FROM {$this->table} WHERE user_id = '$userId'";
        return $this->getByQuery($sql);
    }

    // Thêm sản phẩm vào giỏ hàng
    public function addToCart($userId, $productId, $quantity = 1)
    {
        // Kiểm tra xem sản phẩm đã có trong giỏ hàng chưa
        $sql = "SELECT * FROM {$this->table} WHERE user_id = '$userId' AND product_id = '$productId'";
        $existingItem = $this->getFirstByQuery($sql);

        if ($existingItem) {
            // Cập nhật số lượng
            $newQuantity = $existingItem['quantity'] + $quantity;
            if ($newQuantity <= 0) {
                // Nếu số lượng <= 0, xóa khỏi giỏ hàng
                $this->deleteCartItem($userId, $productId);
            } else {
                // Cập nhật số lượng
                $this->update($this->table, $existingItem['id'], ['quantity' => $newQuantity]);
            }
        } else {
            // Thêm mới vào giỏ hàng nếu số lượng > 0
            if ($quantity > 0) {
                $data = [
                    'user_id' => $userId,
                    'product_id' => $productId,
                    'quantity' => $quantity
                ];
                $this->create($this->table, $data);
            }
        }
    }

    // Xóa một sản phẩm khỏi giỏ hàng
    public function deleteCartItem($userId, $productId)
    {
        $sql = "DELETE FROM {$this->table} WHERE user_id = '$userId' AND product_id = '$productId'";
        $this->_query($sql);
    }

    // Xóa toàn bộ giỏ hàng của người dùng
    public function deleteUserCart($userId)
    {
        $sql = "DELETE FROM {$this->table} WHERE user_id = '$userId'";
        $this->_query($sql);
    }
    public function deleteUserCartVip($userId, $itemId)
    {
        $sql = "DELETE FROM {$this->table} WHERE user_id = '$userId' and product_id = '$itemId'";
        $this->_query($sql);
    }
    // Cập nhật số lượng sản phẩm trong giỏ hàng
    public function updateCartItemQuantity($userId, $productId, $quantity)
    {
        if ($quantity <= 0) {
            $this->deleteCartItem($userId, $productId);
        } else {
            $sql = "UPDATE {$this->table} SET quantity = '$quantity' WHERE user_id = '$userId' AND product_id = '$productId'";
            $this->_query($sql);
        }
    }
}
