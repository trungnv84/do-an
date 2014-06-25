CREATE TABLE IF NOT EXISTS `#__do_an` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,

`ma_sv` VARCHAR(20)  NOT NULL ,
`ho_ten` VARCHAR(30)  NOT NULL ,
`email` VARCHAR(255)  NOT NULL ,
`dien_thoai` VARCHAR(20)  NOT NULL ,
`lop` VARCHAR(255)  NOT NULL ,
`ma_khoa_hoc` VARCHAR(255)  NOT NULL ,
`ma_gv_huong_dan` VARCHAR(255)  NOT NULL ,
`gv_huong_dan` VARCHAR(30)  NOT NULL ,
`gv_xac_nhan_huong_dan` VARCHAR(255)  NOT NULL ,
`gv_phan_bien` VARCHAR(255)  NOT NULL ,
`file_do_an` VARCHAR(255)  NOT NULL ,
`mo_ta` TEXT NOT NULL ,
`tu_khoa` TEXT NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_by` INT(11)  NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__khoa_hoc` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,

`ma_khoa_hoc` VARCHAR(30)  NOT NULL ,
`ten_khoa_hoc` VARCHAR(255)  NOT NULL ,
`mat_khau_sv` VARCHAR(30)  NOT NULL ,
`thoi_gian_bat_dau_dang_ky` DATE NOT NULL ,
`thoi_gian_ket_thuc_dang_ky` DATE NOT NULL ,
`mat_khau_gv` VARCHAR(30)  NOT NULL ,
`thoi_gian_ket_thuc_xac_nhan` DATE NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_by` INT(11)  NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__giao_vien` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,

`ma_giao_vien` VARCHAR(30)  NOT NULL ,
`ten_giao_vien` VARCHAR(30)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_by` INT(11)  NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

