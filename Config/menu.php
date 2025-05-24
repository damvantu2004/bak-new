<?php
return $menus = [
    [
        'label' => 'Dashboard',
        'route' => './?module=admin&controller=dashboard',
        'icon' => 'fa-columns'
    ],
    [
        'label' => 'Quản Lý Danh Mục',
        'route' => './?module=admin&controller=category',
        'icon' => 'fa-list',
        'items' => [
            [
                'label' => 'Tất cả danh mục',
                'route' => './?module=admin&controller=category',
            ],
            [
                'label' => 'Thêm danh mục',
                'route' => './?module=admin&controller=category&action=create',
            ]
        ]
    ],
    [
        'label' => 'Quản Lý Sản Phẩm',
        'route' => './?module=admin&controller=product',
        'icon' => 'fa-bread-slice',
        'items' => [
            [
                'label' => 'Tất cả sản phẩm',
                'route' => './?module=admin&controller=product',
            ],
            [
                'label' => 'Thêm sản phẩm',
                'route' => './?module=admin&controller=product&action=create',
            ]
        ]
    ],
    [
        'label' => 'Quản Lý Mã Giảm Giá',
        'route' => './?module=admin&controller=coupon',
        'icon' => 'fa-gift',
        'items' => [
            [
                'label' => 'Tất cả mã giảm giá',
                'route' => './?module=admin&controller=coupon',
            ],
            [
                'label' => 'Thêm mã giảm giá',
                'route' => './?module=admin&controller=coupon&action=create',
            ]
        ]
    ],
    [
        'label' => 'Quản Lý Đánh Giá',
        'route' => './?module=admin&controller=review',
        'icon' => 'fa-comment-alt',
        'items' => [
            [
                'label' => 'Tất cả đánh giá',
                'route' => './?module=admin&controller=review',
            ],
        ]
    ],
    [
        'label' => 'Quản Lý Liên Hệ',
        'route' => './?module=admin&controller=contact',
        'icon' => 'fa-envelope-open-text',
        'items' => [
            [
                'label' => 'Tất cả liên hệ',
                'route' => './?module=admin&controller=contact',
            ],
        ]
    ],
    [
        'label' => 'Quản Lý Banner',
        'route' => './?module=admin&controller=banner',
        'icon' => 'fa-image',
        'items' => [
            [
                'label' => 'Tất cả banner',
                'route' => './?module=admin&controller=banner',
            ],
            [
                'label' => 'Thêm banner',
                'route' => './?module=admin&controller=banner&action=create',
            ]
        ]
    ],
    [
        'label' => 'Quản Lý Đơn Hàng',
        'route' => './?module=admin&controller=order',
        'icon' => 'fa-receipt',
        'items' => [
            [
                'label' => 'Tất cả đơn hàng',
                'route' => './?module=admin&controller=order',
            ],
            // [
            //     'label' => 'Statistic',
            //     'route' => './?module=admin&controller=category',
            // ]
        ]
    ],
    [
        'label' => 'Quản Lý Tài Khoản',
        'route' => './?module=admin&controller=account',
        'icon' => 'fa-user',
        'items' => [
            [
                'label' => 'Tất cả tài khoản',
                'route' => './?module=admin&controller=account',
            ],
            [
                'label' => 'Thêm tài khoản',
                'route' => './?module=admin&controller=account&action=create',
            ]
        ]
    ]
];
