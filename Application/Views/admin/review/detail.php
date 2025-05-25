<?php view('shared.admin.header', [
    'title' => "Đánh Giá Chi Tiết Sản Phẩm '" . $pro['name'] . "'"
]); ?>

<form action="./?module=admin&controller=review&action=searchReviewForProductFull&id=<?= $pro['id'] ?>" class="form-inline" method="post">

    <div class="form-group">
        <input class="form-control" name="reviewSearch" placeholder="Tìm Kiếm Theo Tên">
    </div>

    <button type="submit" class="btn btn-root  search-btn">
        <i class="fas fa-search"></i>
    </button>
</form>
<hr>
<table class="table table-hover">
    <thead>
        <tr>
            <th>ID Đánh Giá</th>
            <th>Khách Hàng</th>
            <th>Email</th>
            <th class="text-center">Đánh Giá</th>
            <th class="text-center">Nội Dụng</th>
            <th class="text-center">Ngày Tạo</th>
            <th class="text-center">Thao Tác</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($data as $model) : ?>
            <tr>
                <td><?= $model['id'] ?></td>
                <td><?= $model['fname'] . " " . $model['lname'] ?></td>

                <td><?= $model['email'] ?></td>
                <td class="text-center"><?= $model['rating'] ?>/5.0</td>

                <td class="text-center"><?= $model['content'] ?></td>

                <td class="text-center"><?= $model['created_at'] ?></td>
                <td class="text-center">

                    <a href="./?module=admin&controller=review&action=delete&id=<?= $model['id'] ?>&proId=<?= $pro['id'] ?>" class="btn btn-sm btn-danger btndelete" onclick="return confirm('Bạn có chắc muốn xoá đánh giá này?')">
                        <i class="fas fa-trash"></i>
                    </a>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>

<hr>
<?= $pagination ?>
<!-- Pagination -->

<?php view('shared.admin.footer'); ?>