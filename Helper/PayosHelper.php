<?php
require_once __DIR__ . '/../vendor/autoload.php';

use PayOS\PayOS;

class PayosHelper
{
    private $payos;
    
    public function __construct()
    {
        // Thay thế bằng thông tin từ tài khoản Payos của bạn
        $clientId = "YOUR_CLIENT_ID";
        $apiKey = "YOUR_API_KEY";
        $checksumKey = "YOUR_CHECKSUM_KEY";
        
        $this->payos = new PayOS($clientId, $apiKey, $checksumKey);
    }
    
    public function createPaymentLink($orderData)
    {
        try {
            $data = [
                "orderCode" => $orderData["id"],
                "amount" => intval($orderData["total_amount"] * 23000), // Chuyển USD sang VND
                "description" => "Thanh toán đơn hàng #" . $orderData["id"],
                "returnUrl" => "http://" . $_SERVER['HTTP_HOST'] . "/?controller=checkout&action=payosReturn",
                "cancelUrl" => "http://" . $_SERVER['HTTP_HOST'] . "/?controller=checkout&action=payosCancel",
                "expiredAt" => time() + 86400 // 24 giờ
            ];
            
            // Thêm thông tin người mua
            if (isset($orderData["fname"]) && isset($orderData["lname"])) {
                $data["buyerName"] = $orderData["fname"] . " " . $orderData["lname"];
            }
            
            if (isset($orderData["email"])) {
                $data["buyerEmail"] = $orderData["email"];
            }
            
            if (isset($orderData["phone"])) {
                $data["buyerPhone"] = $orderData["phone"];
            }
            
            if (isset($orderData["address"])) {
                $data["buyerAddress"] = $orderData["address"];
            }
            
            // Thêm thông tin sản phẩm
            if (isset($orderData["items"]) && is_array($orderData["items"])) {
                $data["items"] = $orderData["items"];
            }
            
            $response = $this->payos->createPaymentLink($data);
            return $response;
        } catch (\Exception $e) {
            error_log("PayOS Error: " . $e->getMessage());
            return null;
        }
    }
    
    public function getPaymentInfo($orderCode)
    {
        try {
            return $this->payos->getPaymentLinkInfomation($orderCode);
        } catch (\Exception $e) {
            error_log("PayOS Error: " . $e->getMessage());
            return null;
        }
    }
    
    public function verifyWebhookData($webhookData)
    {
        try {
            return $this->payos->verifyWebhookData($webhookData);
        } catch (\Exception $e) {
            error_log("PayOS Webhook Error: " . $e->getMessage());
            return null;
        }
    }
}
