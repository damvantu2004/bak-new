<?php
class CaptchaGenerator {
    public static function generateCode($length = 6) {
        $characters = '23456789ABCDEFGHJKLMNPQRSTUVWXYZ';
        $code = '';
        for ($i = 0; $i < $length; $i++) {
            $code .= $characters[rand(0, strlen($characters) - 1)];
        }
        return $code;
    }
    
    public static function createCaptchaSession() {
        $code = self::generateCode();
        $_SESSION['captcha_code'] = $code;
        return $code;
    }
    
    public static function validateCaptcha($userInput) {
        if (!isset($_SESSION['captcha_code'])) {
            return false;
        }
        
        $result = strtoupper($userInput) === $_SESSION['captcha_code'];
        unset($_SESSION['captcha_code']); // Xóa mã cũ sau khi xác thực
        return $result;
    }
}
