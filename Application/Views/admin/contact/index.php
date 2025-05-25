<?php view('shared.admin.header', [
    'title' => 'Danh Sách Liên Hệ'
]); ?>

<form action="./?module=admin&controller=contact&action=searchContactFull" class="form-inline" method="post">

    <div class="form-group">
        <input class="form-control search-input" name="contactSearch" placeholder="Tìm Kiếm Theo Tên">
    </div>

    <button type="submit" class="btn btn-root search-btn">
        <i class="fas fa-search"></i>
    </button>
</form>
<hr>
<table class="table table-hover">
    <thead>
        <tr>
            <th>ID</th>
            <th>Tên Khách Hàng</th>
            <th>Email</th>
            <th>Số Điện Thoại</th>
            <th class="text-center">Lời Nhắn</th>
            <th class="text-center">Ngày Tạo</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($data as $model) : ?>
            <tr>
                <td><?= $model['id'] ?></td>
                <td><?= $model['name'] ?></td>

                <td><?= $model['email'] ?></td>

                <td><?= $model['phone'] ?></td>

                <td class="text-center"><?= $model['message'] ?></td>

                <td class="text-center"><?= $model['created_at'] ?></td>

            </tr>
        <?php endforeach; ?>
    </tbody>
</table>

<hr>
<?= $pagination ?>
<!-- Pagination -->

<?php view('shared.admin.footer'); ?>