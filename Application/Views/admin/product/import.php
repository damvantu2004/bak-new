<?php view('shared.admin.header', [
    'title' => 'Nhập Danh Sách Sản Phẩm'
]); ?>

<?php if (!empty($message['error'])) { ?>
<div class="alert alert-danger" id="error-import">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true" 
        onclick="document.getElementById('error-import').style.display='none'">&times;</button>
    <?= $message['error'] ?? '' ?>
</div>
<?php } ?>

<?php if (!empty($message['success'])) { ?>
<div class="alert alert-success" id="success-import">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true"
        onclick="document.getElementById('success-import').style.display='none'">&times;</button>
    <?= $message['success'] ?? '' ?>
</div>
<?php } ?>

<div class="card mb-4">
    <div class="card-header">
        <h4>Nhập Vào Sản phẩm & Ảnh</h4>
    </div>
    <div class="card-body">
    <p>Hãy tải file Excel/CSV và upload ảnh sản phẩm theo tên sản phẩm và theo quy tắc dưới đây:</p>
        <ul>
            <li>name - Tên sản phẩm</li>
            <li>price - Giá sản phẩm</li>
            <li>sale_price - Giá sale (0 nếu không có sale)</li>
            <li>description - Mô tả sản phẩm</li>
            <li>origin - Xuất xứ (usa or vn)</li>
            <li>quantity - Số lượng</li>
            <li>category_id - ID danh mục</li>
            <li>status - Trạng thái (1 cho công khai, 0 cho riêng tôi)</li>
        </ul>
        <form action="./?module=admin&controller=product&action=processImport" method="POST" enctype="multipart/form-data">
            <div class="row">
                <!-- Phần 1: Import Excel -->
                <div class="col-md-6">
                    <h5>1. Chọn file Excel/CSV</h5>
                    <div class="form-group">
                        <label>File sản phẩm</label>
                        <input type="file" name="import_file" class="form-control" accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel" required>
                        <small class="form-text text-muted">File Excel chứa thông tin sản phẩm</small>
                    </div>
                    
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" name="header_row" id="header_row" checked>
                        <label class="form-check-label" for="header_row">
                            File có dòng tiêu đề
                        </label>
                    </div>
                </div>
                
                <!-- Phần 2: Upload ảnh -->
                <div class="col-md-6">
                    <h5>2. Chọn ảnh sản phẩm</h5>
                    <div class="form-group">
                        <label>Ảnh sản phẩm</label>
                        <input type="file" name="product_images[]" multiple accept=".jpg,.jpeg,.png" class="form-control">
                        <small class="form-text text-muted">Tên file ảnh nên trùng với tên sản phẩm trong Excel</small>
                    </div>
                </div>
            </div>
            
            <!-- Phần 3: Nút thực hiện -->
            <div class="form-group mt-4">
                <p class="text-info"><i class="fas fa-info-circle"></i> Hệ thống sẽ tự động ghép ảnh với sản phẩm dựa theo tên.</p>
                <a href="./?module=admin&controller=product" class="btn btn-secondary">Hủy</a>
                <button type="submit" class="btn btn-primary">
                    <i class="fas fa-file-import"></i> Nhập Sản phẩm & Ảnh
                </button>
            </div>
        </form>
    </div>
</div>

<div class="mt-4">
    <h5>Tải Xuống Mẫu</h5>
    <a href="./public/samples/product_import_template1.csv" class="btn btn-sm btn-info">
        <i class="fas fa-download"></i> Tải xuống mẫu CSV
    </a>
</div>

<?php view('shared.admin.footer'); ?>
