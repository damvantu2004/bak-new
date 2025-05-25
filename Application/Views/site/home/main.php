<main>
    <!-- Start of main banner -->
    <section class="banner container-fluid p-0">
        <div class="banner-frame row m-0 p-0">
            <div class="bannercontainer">
                <img src="./public/uploads/<?= $banners[0]['image'] ?>" alt="" class="col-md-12 m-0 p-0 bread-img">
                <!-- <div class="overlay"></div>
                <div class="bannertitle">
                    <img src="./public/site/img/home/wheat1.png" alt="" class="wheat-img">
                    <p id="motto">FRESHLY BAKED BREAD</p>
                    <h6>MADE WITH THE LOVE OF THE BEST BAKERS</h6>
                </div> -->
            </div>
        </div>
    </section>

    <section class="quickshopping">
        <div class="container-fluid section-main">
            <div class="content-title-block">
                <p class="block-title">Sản Phẩm Chất Lượng Cao</p>
                <p class="block-motto"><span>MUA NGAY</span></p>
            </div>

            <div class="container" style="margin-top: 40px;">
                <div class="content-block">
                    <ul id='quick-shop-list'>
                        <li>

                            <div class="bread-desc">
                                <h3>Tiệm bánh</h3>
                                <p>Nơi mang đến những chiếc bánh tươi ngon, hấp dẫn và đa dạng.
                                </p>
                                <a href="./?controller=product&action=allProducts"><button><span>MUA NGAY</span><img src="./public/site/img/home/logo/right.png" alt=""></button></a>
                                <div class="basket">
                                    <img src="./public/site/img/home/images/basket6.png" alt="">
                                </div>
                            </div>

                        </li>

                        <li>

                            <div class="bread-desc">
                                <h3>Bánh mì</h3>
                                <p>Thưởng thức các loại bánh mì thơm ngon, nóng hổi mỗi ngày.</p>
                                <a href="./?controller=product&action=allProducts"><button><span>MUA NGAY</span><img src="./public/site/img/home/logo/right.png" alt=""></button></a>
                                <div class="basket">
                                    <img src="./public/site/img/home/images/basket7.png" alt="">
                                </div>
                            </div>

                        </li>

                        <li>

                            <div class="bread-desc">
                                <h3>Bánh muffin</h3>
                                <p>Những chiếc bánh muffin mềm mại, ngọt ngào, phù hợp mọi lúc.</p>
                                <a href="./?controller=product&action=allProducts"><button><span>MUA NGAY</span><img src="./public/site/img/home/logo/right.png" alt=""></button></a>
                                <div class="basket">
                                    <img src="./public/site/img/home/images/basket1.png" alt="">
                                </div>
                            </div>
                            <!-- <div class="trapezoid">
                                    <div class="basket">
                                        <img src="./public/site/img/home/images/basket1.png" alt="">
                                    </div>
                                </div> -->

                        </li>
                    </ul>
                </div>


            </div>
        </div>


    </section>
    <!-- Start of why choose us -->
    <section class="why-choose-us p-50">
        <div class="container-fluid section-main">
            <div class="title-block">
                <p class="block-title">Vì Sao Nên Chọn Chúng Tôi</p>
                <p class="block-motto"><span>CHẤT LƯỢNG TUYỆT VỜI</span></p>
            </div>

            <div class="container content-block">
                <ul id="why-list">
                    <li>
                        <div class="why-block">
                            <div class="circle">
                                <img src="./public/site/img/home/whychooseus/payment.png" alt="">
                            </div>
                            <div class="why-reason">
                                <h5>Thanh toán an toàn</h5>
                                <p>Bảo mật, an tâm</p>
                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="why-block">
                            <div class="circle">
                                <img src="./public/site/img/home/whychooseus/organic.png" alt="">
                            </div>
                            <div class="why-reason">
                                <h5>100% nguyên liệu hữu cơ</h5>
                                <p>Sạch và tự nhiên</p>
                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="why-block">
                            <div class="circle">
                                <img src="./public/site/img/home/whychooseus/24-hours-support.png" alt="">
                            </div>
                            <div class="why-reason">
                                <h5>Chăm sóc khách hàng</h5>
                                <p>Hỗ trợ tận tình 24/7</p>
                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="why-block">
                            <div class="circle">
                                <img src="./public/site/img/home/whychooseus/free-delivery.png" alt="">
                            </div>
                            <div class="why-reason">
                                <h5>Miễn phí vận chuyển</h5>
                                <p>Dành cho đơn trên 100$</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <!-- End of why choose us -->

    <!-- Start of promotion -->
    <section class="promotion">
        <div class="promotion-block container-fluid content-block">
            <ul>
                <li class="offer-image">
                    <div class="imgcontainer">
                        <img src="./public/uploads/<?= $offer_pro['image'] ?>" alt="">
                    </div>
                </li>
                <li class="offer-info">
                    <div>
                        <p class="block-title">Ưu Đãi Tuần Này</p>
                        <p class="offer-deal">
                            Giảm <span style="font-weight: bold"><?= $offer_pro['percent'] ?></span>% sản phẩm này
                        </p>

                        <h3><?= $offer_pro['name'] ?></h3>
                        <h5 class="offer-price"><span class="strikeout">$<?= number_format($offer_pro['price'], 2, '.', '') ?></span> Chỉ còn
                            $<?= number_format($offer_pro['sale_price'], 2, '.', '') ?></h5>

                        <p class="p-lorem">Cam kết mang đến sản phẩm chất lượng cao, chế biến tỉ mỉ và an toàn cho sức khỏe.
                            Đảm bảo sự hài lòng và trải nghiệm tuyệt vời cho khách hàng.</p>

                        <!-- <div class="countdown" data-date="2021-12-28" data-time="12:00"></div> -->

                        <a class="offer-btn btn-root ptc-btn border-root" style="margin-top: 15px; position: absolute" href="./?controller=product&action=productDetail&id=<?= $offer_pro['id'] ?>">
                            MUA NGAY
                        </a>

                    </div>





                </li>

            </ul>

        </div>
    </section>
    <!-- End of promotion -->

    <!-- Start of latest products -->
    <section class="latest-products p-50">
        <div class="container-fluid section-main">
            <div class="content-title-block">
                <p class="block-title">Bánh Mới Ra Lò</p>
                <p class="block-motto"><span>Bánh Tươi Thượng Hạng</span></p>
            </div>

            <div class="container">

                <ul class="pro-category">
                    <?php foreach ($categories as $cat) : ?>
                        <li><a href="./?controller=product&action=allProducts&id=<?= $cat['id'] ?>">
                                <h5><?= $cat['name'] ?></h5>
                            </a></li>

                        <p>/</p>
                    <?php endforeach; ?>

                </ul>

                <div class="content-block">
                    <ul id='pro-list'>
                        <?php foreach ($latest_products8 as $product) : ?>
                            <li>
                                <a href="./?controller=product&action=productDetail&id=<?= $product['id'] ?>">
                                    <div class="pro-block">
                                        <div class="pro-img">
                                            <?php
                                            $productImage = !empty($product['image']) ? $product['image'] : 'no-image.png';
                                            ?>
                                            <img src="./public/uploads/<?= $productImage; ?>" alt="<?= $product['name']; ?>">
                                        </div>
                                        <div class="pro-info">
                                            <h5><?= $product['name'] ?? '' ?></h5>
                                            <h5>$<?= number_format($product['sale_price'] > 0 ? $product['sale_price'] : $product['price'], 2, '.', '') ?>
                                            </h5>
                                        </div>
                                    </div>
                                </a>

                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>


            </div>
        </div>
    </section>
    <!-- End of latest products -->


    <section class="cookie-banner">

        <img src="./public/uploads/<?= $banners[1]['image'] ?>" alt="">

    </section>

    <!-- Start of product for you -->
    <section class="product-for-you p-50">
        <div class="container-fluid section-main">
            <div class="content-title-block">
                <p class="block-title">Dành Cho Bạn</p>
                <p class="block-motto"><span>Bánh Tươi Mới</span></p>
            </div>

            <div class="container" style="margin-top: 40px;">

                <div class="content-block">
                    <div id="add-product-to-cart-ajax" style="margin: 0 auto 20px auto; width: 90%"></div>
                    <ul id='new-pro-list'>
                        <!-- <input type="text" id="success-message"> -->
                        <?php foreach ($latest_products4 as $product) : ?>
                            <li>

                                <div class="new-pro-block">
                                    <div class="new-pro-img">
                                        <?php
                                        $productImage = !empty($product['image']) ? $product['image'] : 'no-image.png';
                                        ?>
                                        <img src="./public/uploads/<?= $productImage; ?>" alt="<?= $product['name']; ?>">
                                    </div>
                                    <div class="new-pro-info">
                                        <h5> <?= $product['name'] ?? '' ?> </h5>
                                        <p><?= $product['description'] ?> </p>
                                        <h5>$<?= number_format($product['sale_price'] > 0 ? $product['sale_price'] : $product['price'], 2, '.', '') ?>
                                        </h5>
                                    </div>
                                    <a id="add-to-cart-btn<?= $product['id'] ?>" class="swalDefaultSuccess " onclick="onAddToCartAjaxHome(<?= $product['id'] ?>)">
                                        <button><i class="fas fa-shopping-basket" style="font-size:13px"></i><span> ADD TO
                                                CART</span></button>
                                    </a>

                                </div>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>


            </div>
        </div>
    </section>
    <!-- End of profuct for you -->

    <!-- Start of testimonial -->
    <section class="testimonial">
        <div class="container-fluid section-main">
            <div class="content-title-block">
                <p class="block-title">Khách Hàng Nhận Xét</p>
                <p class="block-motto"><span>PHẢN HỒI</span></p>
            </div>
            <div class="container">
                <div class="testimonial-container" style="position: relative;">
                    <div class="carousel-inner" id="testimonial-list" role="listbox">
                        <div class="mySlides fade testimonial-item">
                            <div class="testimonial-block">

                                <div class="customer-info">
                                    <img src="./public/site/img/home/customer/testimonial.png">
                                    <p> Bánh ở đây thật sự rất ngon và trình bày cực kì đẹp mắt.
                                        Mỗi lần đến mình đều thử món mới và chưa bao giờ thất vọng!
                                        <br>
                                    </p>
                                    <span id="star-icon"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
                                    <h5> Mạnh Nguyễn </h5>
                                    <span id="job"> Blogger ẩm thực </span>
                                </div>
                                <div class="customer-img">
                                    <img src=" ./public/site/img/home/customer/comment_1.png ">
                                </div>
                            </div>
                        </div>

                        <div class="mySlides fade testimonial-item">
                            <div class="testimonial-block">

                                <div class="customer-info">
                                    <img src="./public/site/img/home/customer/testimonial.png">
                                    <p> Tôi là đầu bếp bánh nhiều năm và thật sự ngạc nhiên với chất lượng bánh ở đây.
                                        Hương vị tinh tế, nguyên liệu rõ ràng và làm rất chuyên nghiệp.
                                        <br>
                                    </p>
                                    <span id="star-icon"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
                                    <h5> Đàm Tú </h5>
                                    <span id="job"> Thợ làm bánh </span>
                                </div>
                                <div class="customer-img">
                                    <img src=" ./public/site/img/home/customer/comment_2.png ">
                                </div>
                            </div>
                        </div>

                        <div class="mySlides fade testimonial-item">
                            <div class="testimonial-block">

                                <div class="customer-info">
                                    <img src="./public/site/img/home/customer/testimonial.png">
                                    <p> Tớ thường đặt bánh ở đây cho các buổi chụp ảnh.
                                        Bánh không chỉ đẹp mắt mà còn rất ngon — khách hàng của tớ cũng rất thích!
                                        <br>
                                    </p>
                                    <span id="star-icon"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span>
                                    <h5> Khúc Thị Hương</h5>
                                    <span id="job"> Người mẫu </span>
                                </div>
                                <div class="customer-img">
                                    <img src=" ./public/site/img/home/customer/comment_3.png ">
                                </div>
                            </div>
                        </div>
                    </div>

                    <a class="prev" onclick="plusSlides(-1)">❮</a>
                    <a class="next" onclick="plusSlides(1)">❯</a>
                </div>

                <br>

                <div style="text-align:center">
                    <span class="dot" onclick="currentSlide(1)"></span>
                    <span class="dot" onclick="currentSlide(2)"></span>
                    <span class="dot" onclick="currentSlide(3)"></span>
                </div>

            </div>
        </div>
    </section>
    <!-- End of testimonial -->

    <section class="bottom-banner">
        <img src="./public/site/img/about/logo-banner.png" alt="">
    </section>
</main>

<style>
    .testimonial-container {
        max-width: 1200px;
        position: relative;
        margin: auto;
    }

    .prev,
    .next {
        cursor: pointer;
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        width: auto;
        padding: 16px;
        color: #717171;
        font-weight: bold;
        font-size: 24px;
        transition: 0.4s ease;
        border-radius: 50%;
        user-select: none;
        text-decoration: none;
        background-color: rgba(255, 255, 255, 0.8);
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
    }

    .next {
        right: -30px;
    }

    .prev {
        left: -30px;
    }

    .prev:hover,
    .next:hover {
        background-color: #f1f1f1;
        color: black;
        text-decoration: none;
    }

    .dot {
        cursor: pointer;
        height: 12px;
        width: 12px;
        margin: 0 4px;
        background-color: #bbb;
        border-radius: 50%;
        display: inline-block;
        transition: background-color 0.3s ease;
    }

    .dot:hover {
        background-color: #717171;
    }
</style>

<script>
    var slideIndex = 1;
    var slideTimer = null;
    showSlides(slideIndex);

    function plusSlides(n) {
        clearTimeout(slideTimer);
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        clearTimeout(slideTimer);
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");

        if (n > slides.length) {
            slideIndex = 1
        }
        if (n < 1) {
            slideIndex = slides.length
        }

        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }

        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }

        if (slides[slideIndex - 1]) {
            slides[slideIndex - 1].style.display = "block";
        }
        if (dots[slideIndex - 1]) {
            dots[slideIndex - 1].className += " active";
        }

        slideTimer = setTimeout(function() {
            plusSlides(1);
        }, 3000);
    }

    document.querySelector('.testimonial-container').addEventListener('mouseover', function() {
        clearTimeout(slideTimer);
    });

    document.querySelector('.testimonial-container').addEventListener('mouseout', function() {
        slideTimer = setTimeout(function() {
            plusSlides(1);
        }, 3000);
    });
</script>