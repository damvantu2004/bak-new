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
$width = 150;
$height = 50;
$image = imagecreatetruecolor($width, $height);

// Màu nền và chữ
$background = imagecolorallocate($image, 240, 240, 255);
$textColor = imagecolorallocate($image, 0, 0, 255);
$noiseColor = imagecolorallocate($image, 100, 120, 180);

// Vẽ nền
imagefilledrectangle($image, 0, 0, $width, $height, $background);

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
$font = 5; // Sử dụng font gốc của PHP
$x = 25;
for ($i = 0; $i < strlen($code); $i++) {
    $y = rand(15, 25);
    imagechar($image, $font, $x, $y, $code[$i], $textColor);
    $x += 15;
}

// Output hình ảnh
header('Content-Type: image/png');
imagepng($image);
imagedestroy($image);
exit;
