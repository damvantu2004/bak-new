<?php view('shared.admin.header', [
    'title' => 'Chỉnh Sửa Danh Mục'
]); ?>
<?php if (!empty($message['success-edit'])) { ?>
    <div class="alert alert-success" id="success-edit-category">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true" onclick="document.getElementById('success-edit-category').style.display='none'">&times;</button>
        <?= $message['success-edit'] ?? '' ?>
    </div>
<?php } ?>

<form action="./?module=admin&controller=category&action=update&id=<?= $_GET['id'] ?>" method="POST" role="form" name="categoryForm" onsubmit="return validateCategoryForm();">

    <div class="form-group">
        <label for="">Tên Danh Mục</label>
        <small id="ad-ctg-cr-name-err"></small>
        <input type="text" class="form-control" name="name" placeholder="Input name" value="<?= $category['name'] ?>" id="ad-ctg-cr-name" onkeyup="validateNotEmpty(this, 'Category name');">
        <?php if (!empty($message['error-name'])) : ?>
            <small class="help-block invalid-error"><?= $message['error-name'] ?></small>
        <?php endif; ?>
    </div>
    <div class="form-group">
        <label for="">Trạng Thái</label>

        <div class="radio">
            <label>
                <input type="radio" name="status" value="1" <?= $category['status'] == 1 ? 'checked' : '' ?>>
                Hiển Thị
            </label>
            <label>
                <input type="radio" name="status" value="0" <?= $category['status'] == 0 ? 'checked' : '' ?>>
                Ẩn
            </label>
        </div>
        <div class="form-group">
            <label for="">Mức Độ Ưu Tiên</label>
            <small id="ad-ctg-cr-priority-err"></small>
            <input type="number" value="1" class="form-control" name="priority" placeholder="Input name" <?= $category['priority'] ?> id="ad-ctg-cr-priority" onkeyup="validateInt(this, 'Priority');">

        </div>
    </div>



    <button type="submit" class="btn btn-primary">Lưu Dữ Liệu</button>
</form>

<?php view('shared.admin.footer'); ?>