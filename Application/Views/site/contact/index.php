<?php view('shared.site.header', [
    'title' => 'Contact'
]); ?>
<style>
    .contact-banner {
        background-image: url("./public/uploads/<?= $banners[0]['image'] ?>");
    }
</style>
<section class="banner contact-banner">
    <div class="container-fluid banner-title">
        <div class="row">
            <div class="col-md-12">
                <h2 id="motto">Liên Hệ</h2>
                <span>Trang Chủ</span> &nbsp;<span>\\</span> &nbsp;<span>Liên Hệ</span>
            </div>

        </div>
    </div>

    <div class="container-fluid banner-share">
        <div class="row">
            <span>Chia sẻ nội dung này:</span>
            <div class="banner-social">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-google-plus-g"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
            </div>
        </div>

    </div>

</section>


<section class="contact p-50">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="contact-info">
                    <h2>Thông Tin Liên Lạc</h2>
                    <p class="contact-loc-desc">
                    Tiệm bánh tọa lạc ngay tại trung tâm thành phố
                    Hà Nội – con phố Tuệ Tĩnh ấm cúng với nhiều cửa hàng mua sắm và chỗ đậu xe rộng rãi, thuận tiện cho quý khách ghé thăm.
                    </p>

                    <div class="contact-detail">
                        <ul>
                            <li>
                                <div class="contact-detail-block">
                                    <div class="contact-icon">
                                        <i class="fas fa-map-marker-alt"></i>
                                    </div>

                                    <div class="contact-info">
                                        <h4>Địa Chỉ</h4>
                                        <p>45 P. Tuệ Tĩnh, Bùi Thị Xuân, Hai Bà Trưng, Hà Nội, Việt Nam</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="contact-detail-block">
                                    <div class="contact-icon">
                                        <i class="fas fa-phone-alt"></i>
                                    </div>

                                    <div class="contact-info">
                                        <h4>Số Điện Thoại</h4>
                                        <div class="hotline">
                                            <span style="vertical-align: top;">Hotline: </span>
                                            <p class="phone">0388888888
                                                <br>0868222222
                                            </p>
                                        </div>
                                        <p>Telephone: <span class="phone">0127888888</span></p>


                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="contact-detail-block">
                                    <div class="contact-icon">
                                        <i class="fas fa-envelope"></i>
                                    </div>

                                    <div class="contact-info">
                                        <h4>Email</h4>
                                        <p>bakery@support.com</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="contact-form-block">
                    <h2>Form Liên Hệ</h2>
                    <form method="POST" name="contactForm" class="contact-form" action="./?controller=contact&action=submitForm" onsubmit="return validateContactForm();">
                        <div class="form-group">
                            <input type="text" name="name" class="form-control" placeholder="Tên của bạn *" id="ct-name" onkeyup="validateName(this, 'Name')" value="<?= !empty($_SESSION['user']) ? $_SESSION['user']['fname'] . ' ' . $_SESSION['user']['lname'] : ''  ?>">
                            <small id="ct-name-err"></small>

                        </div>
                        <div class="form-group">
                            <input type="text" name="email" class="form-control" placeholder="Địa chỉ email *" id="ct-email" onkeyup="validateEmail(this)" value="<?= !empty($_SESSION['user']) ? $_SESSION['user']['email'] : ''  ?>">
                            <small id="ct-email-err"></small>

                        </div>
                        <div class="form-group">
                            <input type="text" name="phone" class="form-control" placeholder="Số điện thoại *" id="ct-phone" onkeyup="validatePhone(this)" value="<?= !empty($_SESSION['user']) ? $_SESSION['user']['phone'] : ''  ?>">
                            <small id="ct-phone-err"></small>

                        </div>

                        <div class="form-group">
                            <textarea class="form-control" name="message" rows="5" placeholder="Lời nhắn *" id="ct-msg" onkeyup="validateLength(this, 'Message', 500)"></textarea>
                            <small id="ct-msg-err"></small>

                        </div>

                        <div class="form-group">
                            <button type="submit" class="send-mess-btn" id="send-msg-btn">Gửi lời nhắn</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<app-map></app-map>

<section class="bottom-banner">
    <img src="assets/img/about/logo-banner.png" alt="">
</section>
<?php view('shared.site.footer') ?>