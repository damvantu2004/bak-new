<?php view('shared.site.header', [
    'title' => 'Order history'
]); ?>

<style>
    .cart-banner {
        background-image: url("./public/uploads/<?= $banners[0]['image'] ?>");
    }
</style>

<section class="banner cart-banner">
    <div class="container-fluid banner-title">
        <div class="row">
            <div class="col-md-12">
                <h2 id="motto">Đơn Hàng Của Bạn</h2>

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

<section class="p-50">
    <div class="container-fluid" style="padding: 0 50px">
        <table class="table cart-table order-list-table">
            <thead style="border-top: none;">
                <tr>

                    <th>
                        ID Đơn Hàng
                    </th>
                    <th>
                        Họ Tên
                    </th>
                    <th>
                        Số Điện Thoại
                    </th>
                    <th>
                        Địa Chỉ
                    </th>
                    <th>
                        Tỉnh Thành
                    </th>
                    <th>
                         Ngày Tạo
                    </th>
                    <th>
                        Trạng Thái
                    </th>
                    <th>
                        Số Lượng Sản Phẩm
                    </th>
                    <th>
                        Tổng Tiền
                    </th>
                    <th>
                        Chi Tiết
                    </th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($orders as $order) : ?>
                    <tr class="text-center">
                        <td>

                            <?= $order['id'] ?>


                        </td>

                        <td>
                            <?= $order['fname'] . ' ' . $order['lname'] ?>

                        </td>

                        <td>
                            <?= $order['phone'] ?>
                        </td>
                        <td>
                            <?= $order['address'] ?>
                        </td>
                        <td>
                            <?= $order['province'] ?>
                        </td>
                        <td>
                            <?= $order['created_at'] ?>
                        </td>
                        <td>
                            <?php if ($order['status'] == 1) : ?>
                                <span class="badge badge-info">Đang Xử Lý</span>
                            <?php endif; ?>
                            <?php if ($order['status'] == 0) : ?>
                                <span class="badge badge-success">Đã Vận Chuyển</span>
                            <?php endif; ?><?php if ($order['status'] == 2) : ?>
                                <span class="badge badge-warning">Đang Vận Chuyển</span>
                            <?php endif; ?>
                            <?php if ($order['status'] == 3) : ?>
                                <span class="badge badge-danger">Đã Huỷ</span>
                            <?php endif; ?>
                        </td>
                        <td class="text-center">
                            <?= $order['quantity'] ?>
                        </td>
                        <td>
                            $<?= number_format(($order['total']) * (1 - $order['coupon']) + 2, 2, '.', '') ?>
                        </td>
                        <td> <a title="View order detail" href="./?controller=customer&action=orderDetail&id=<?= $order['id'] ?>" class="btn btn-sm btn-success">
                                <i class="fas fa-info-circle"></i></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>



        </table>
        <?= $pagination ?>
    </div>

</section>
<?php view('shared.site.footer'); ?>