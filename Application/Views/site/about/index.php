<?php view('shared.site.header', [
    'title' => 'About'
]); ?>
<style>
    .banner {
        background-image: url("./public/uploads/<?= $banners[0]['image'] ?>");
    }
</style>
<!-- Start of banner -->
<section class="banner">
    <div class="container-fluid banner-title">
        <div class="row">
            <div class="col-md-12">
                <h2 id="motto">Giới Thiệu</h2>
                <span>Trang Chủ</span> &nbsp;<span>\\</span> &nbsp;<span>Giới Thiệu</span>
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
<!-- End of banner -->


<!-- Start of history -->
<section class="history">
    <div class="container-fluid content-block">

        <ul>
            <li>
                <div class="cupcake-img">
                    <img src="./public/site/img/about/cupcake.png" alt="">
                </div>
            </li>
            <li>
                <div class="intro">
                    <div class="content-title-block">
                        <h2 class="block-title">Tiệm bánh lâu đời nhất ở Hà Nội</h2>
                        <p class="block-motto"><span>CHẶNG ĐƯỜNG PHÁT TRIỂN</span></p>
                    </div>

                    <div class="content">
                        <p>Với 25 năm hoạt động và không ngừng phát triển, 
                            chúng tôi đã không ngừng hoàn thiện để mang đến những chiếc bánh chất lượng nhất. 
                            Sự tận tâm và đam mê là cốt lõi tạo nên thương hiệu hiện tại.</p>
                        <p>Chúng tôi luôn đề cao sự an toàn và chất lượng trong từng nguyên liệu. 
                            Từng chiếc bánh là thành quả của quy trình nghiêm ngặt, 
                            đội ngũ lành nghề và tình yêu dành cho nghề làm bánh.</p>
                        <p>Mỗi ngày, chúng tôi không ngừng nỗ lực để mang lại trải nghiệm tuyệt vời nhất cho khách hàng — từ hương vị đến dịch vụ. 
                            Sự hài lòng của bạn chính là nguồn động lực lớn nhất của chúng tôi.</p>

                    </div>

                    <div class="signature">
                        <img src="./public/site/img/about/sign.png" alt="">
                        <div>
                            <h6>Stephen Strange</h6> <span> - Chủ tiệm bánh</span>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</section>
<!-- End of history -->


<!-- Start of why choose us -->
<section class="why-choose-us p-50">
    <div class="container-fluid section-main">
        <div class="title-block">
            <p class="block-title">Vì Sao Nên Chọn Chúng Tôi</p>
            <p class="block-motto"><span>SẢN PHẨM TỐT NHẤT THỊ TRƯỜNG</span></p>
        </div>

        <div class="container content-block">
            <ul id="why-list">
                <li class="list-item">
                    <ul>
                        <li>
                            <div class="why-block left">
                                <div class="circle">
                                    <img src="./public/site/img/about/healthy.png" alt="">
                                </div>
                                <div class="why-reason">
                                    <h5>Tốt cho sức khỏe</h5>
                                    <p>Ưu tiên sức khỏe khách hàng</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="why-block left">
                                <div class="circle">
                                    <img src="./public/site/img/home/whychooseus/organic.png" alt="">
                                </div>
                                <div class="why-reason">
                                    <h5>100% nguyên liệu hữu cơ</h5>
                                    <p>Thân thiện với môi trường</p>
                                </div>
                            </div>
                        </li>
                    </ul>

                </li>


                <li class="list-item">
                    <img src="./public/site/img/home/images/basket5.png" alt="">
                </li>
                <li class="list-item">
                    <ul>
                        <li>
                            <div class="why-block right">
                                <div class="circle">
                                    <img src="./public/site/img/home/whychooseus/free-delivery.png" alt="">
                                </div>
                                <div class="why-reason">
                                    <h5>Miễn phí vận chuyển</h5>
                                    <p>Dành cho đơn trên 100$</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="why-block right">
                                <div class="circle">
                                    <img src="./public/site/img/about/quality.png" alt="">
                                </div>
                                <div class="why-reason">
                                    <h5>Sản phẩm chất lượng cao</h5>
                                    <p>Đạt tiêu chuẩn 5 sao</p>
                                </div>
                            </div>
                        </li>
                    </ul>



                </li>
            </ul>
        </div>
    </div>
</section>

<!-- End of why choose us -->

<!-- Start of Meet our chef -->
<section class="meet p-50">
    <div class="container-fluid section-main">
        <div class="title-block">
            <p class="block-title">Đội Ngũ Đầu Bếp</p>
            <p class="block-motto"><span>NGƯỜI TẠO NÊN HƯƠNG VỊ</span></p>
        </div>

        <div class="container-fluid" style="margin-top: 40px;">
            <div class="content-block">
                <ul id="chef-list">


                    <li>
                        <div class="chef-block">
                            <div class="chef-img">
                                <img src="./public/site/img/about/chef-1.png" alt="" style=" border-radius: 100%">
                            </div>
                            <div class="chef-info">
                                <h5>Phạm Ngọc Tiến</h5>
                                <p>Thợ code</p>
                            </div>
                            <div class="chef-social">
                                <a href="https://www.facebook.com/klfbtien"><i class="fab fa-facebook-f"></i></a>
                                
                                
                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="chef-block">
                            <div class="chef-img">
                                <img src="./public/site/img/about/chef-1.png" alt="" style=" border-radius: 100%">
                            </div>
                            <div class="chef-info">
                                <h5>Đàm Văn Tú</h5>
                                <p>Vua đầu bếp</p>
                            </div>
                            <div class="chef-social">
                                <a href="https://www.facebook.com/amtu.961169"><i class="fab fa-facebook-f"></i></a>
                                
                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="chef-block">
                            <div class="chef-img">
                                <img src="./public/site/img/about/chef-1.png" alt="" style=" border-radius: 100%">
                            </div>
                            <div class="chef-info">
                                <h5>Nguyễn Đức Mạnh</h5>
                                <p>Chất</p>
                            </div>
                            <div class="chef-social">
                                <a href="https://www.facebook.com/manhnguyen.2608/"><i class="fab fa-facebook-f"></i></a>
                                
                            </div>
                        </div>
                    </li>
                    
                </ul>

            </div>
        </div>
    </div>
</section>
<!-- End of Meet our chef -->


<section class="bottom-banner">
    <img src="./public/site/img/about/logo-banner.png" alt="">
</section>

<?php view('shared.site.footer'); ?>