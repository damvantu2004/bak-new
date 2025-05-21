<?php


class OrderDetail extends BaseModel
{
    const TABLE = "order_detail";

    public function store($data)
    { 
        // Thay vì gọi create() của BaseModel, ta sẽ trực tiếp chèn dữ liệu
        $colums = implode(',', array_keys($data));
        
        $newValues = array_map(function ($value) {
            return "'" . $value . "'";
        }, array_values($data));
        
        $values = implode(',', $newValues);
        
        $sql = "INSERT INTO `" . self::TABLE . "` (${colums}) VALUE (${values})";
        
        // Thực thi câu lệnh SQL và không cần trả về bản ghi nào
        $this->_query($sql);
        
        // Cập nhật số lượng sản phẩm trong bảng product
        $this->updateProductQuantity($data['product_id'], $data['quantity']);
    }
    
    // Phương thức mới để cập nhật số lượng sản phẩm
    private function updateProductQuantity($product_id, $quantity_ordered)
    {
        // Lấy thông tin sản phẩm hiện tại
        $sql = "SELECT quantity FROM product WHERE id = $product_id";
        $query = $this->_query($sql);
        $product = mysqli_fetch_assoc($query);
        
        // Tính toán số lượng mới
        $new_quantity = $product['quantity'] - $quantity_ordered;
        if ($new_quantity < 0) $new_quantity = 0;
        
        // Cập nhật số lượng sản phẩm
        $update_sql = "UPDATE product SET quantity = $new_quantity WHERE id = $product_id";
        $this->_query($update_sql);
    }
}
