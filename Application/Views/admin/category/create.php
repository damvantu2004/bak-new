<?php view('shared.admin.header', [
    'title' => 'Thêm Danh Mục'
]); ?>
<?php if (!empty($message['success-add'])) { ?>
    <div class="alert alert-success" id="success-add-category">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true" onclick="document.getElementById('success-add-category').style.display='none'">&times;</button>
        <?= $message['success-add'] ?? '' ?>
    </div>
<?php } ?>

<form action="./?module=admin&controller=category&action=store" method="POST" role="form" name="categoryForm" onsubmit="return validateCategoryForm();">

    <div class="form-group">
        <label for="">Tên Danh Mục</label>
        <small id="ad-ctg-cr-name-err"></small>
        <input type="text" class="form-control" name="name" placeholder="Nhập vào tên danh mục" id="ad-ctg-cr-name" onkeyup="validateNotEmpty(this, 'Category name');">
        <?php if (!empty($message['error-name'])) : ?>
            <small class="help-block invalid-error"><?= $message['error-name'] ?></small>
        <?php endif; ?>
    </div>
    <div class="form-group">
        <label for="">Trạng Thái</label>

        <div class="radio">
            <label>
                <input type="radio" name="status" value="1" checked>
                Hiển Thị
            </label>
            <label>
                <input type="radio" name="status" value="0">
                Ẩn
            </label>
        </div>
        <div class="form-group">
            <label for="">Mức Độ Ưu Tiên</label>
            <small id="ad-ctg-cr-priority-err"></small>
            <input type="number" class="form-control" name="priority" placeholder="Nhập vào mức độ ưu tiên" id="ad-ctg-cr-priority" onkeyup="validateInt(this, 'Priority');">
        </div>
    </div>



    <button type="submit" class="btn btn-primary">Lưu Dữ Liệu</button>
</form>

<?php view('shared.admin.footer'); ?>