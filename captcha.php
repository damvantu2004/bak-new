<?php
// Debug
error_reporting(E_ALL);
ini_set('display_errors', 1);

if (!extension_loaded('gd')) {
    die('PHP GD extension is not installed');
}
session_start();
require_once 'Helper/CaptchaGenerator.php';

// Tạo mã CAPTCHA và lưu vào session
$code = CaptchaGenerator::createCaptchaSession();

// Tạo hình ảnh
$width = 220;
$height = 60;
$image = imagecreatetruecolor($width, $height);

// Màu nền và chữ
$background = imagecolorallocate($image, 240, 240, 255);
$textColor = imagecolorallocate($image, 0, 0, 185);
$noiseColor = imagecolorallocate($image, 0, 0, 0);




// Vẽ nền
imagefilledrectangle($image, 0, 0, $width-1, $height-1, $background);

// Thêm nhiễu
for ($i = 0; $i < 100; $i++) {
    imagesetpixel($image, rand(0, $width), rand(0, $height), $noiseColor);
}

// Vẽ các đường nhiễu
for ($i = 0; $i < 5; $i++) {
    imageline($image, 
        rand(0, $width), rand(0, $height), 
        rand(0, $width), rand(0, $height), 
        $noiseColor);
}

// Vẽ chữ CAPTCHA
$font = 55; // Sử dụng font gốc của PHP kích thước
$x = 25; // Vị trí x của chữ
for ($i = 0; $i < strlen($code); $i++) {
    $y = rand(15, 25); // Vị trí y của chữ
    imagechar($image, $font, $x, $y, $code[$i], $textColor);
    $x += 25; // Khoảng cách giữa các chữ
}

// Output hình ảnh
header('Content-Type: image/png');
imagepng($image);
imagedestroy($image);
exit;
