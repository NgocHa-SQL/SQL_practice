/*********************USE DATABASE***************************/
USE QUAN_LY_MAT_HANG
/***********************************************************/

INSERT INTO MatHang VALUES ('MH001',N'Laptop',N'Tốt',18000000)
INSERT INTO MatHang VALUES ('MH002',N'Phụ kiện điện thoại',N'Tốt',1900000)
INSERT INTO MatHang VALUES ('MH003',N'Phụ kiện bàn phím',N'Tốt',700000)
INSERT INTO MatHang VALUES ('MH004',N'Đồ dùng điện tử',N'Tốt',500000)
INSERT INTO MatHang VALUES ('MH005',N'Phụ kiện laptop',N'Tốt',1000000)

INSERT INTO KhachHang VALUES ('KH001',N'Phú Lộc',N'Đà Nẵng','0511.3246135','1')
INSERT INTO KhachHang VALUES ('KH002',N'Hoàng Gia',N'Quảng Nam','0510.6333444','0')
INSERT INTO KhachHang VALUES ('KH003',N'Nguyễn Lan Anh',N'Huế','0988.148248','1')
INSERT INTO KhachHang VALUES ('KH004',N'Nguyễn Phương Nam',N'Hồ Chí Minh','0915.358428','0')
INSERT INTO KhachHang VALUES ('KH005',N'Lê Nữu',N'Hồ Chí Minh','0333.268518','1')

INSERT INTO LoaiHang VALUES ('LH011',N'Laptop Dell','MH001')
INSERT INTO LoaiHang VALUES ('LH012',N'Đầu máy CD','MH004')
INSERT INTO LoaiHang VALUES ('LH013',N'Phím laptop','MH003')
INSERT INTO LoaiHang VALUES ('LH014',N'Chuột','MH005')
INSERT INTO LoaiHang VALUES ('LH015',N'Tai nghe','MH002')

INSERT INTO NhanVien VALUES ('NV001',N'An Lộc',N'Đà Nẵng','0511.3245635','2012-03-14','B','1500000',3)
INSERT INTO NhanVien VALUES ('NV002',N'Nguyễn Lan',N'Vũng Tàu','0915.3335635','2015-04-24','A','2000000',1)
INSERT INTO NhanVien VALUES ('NV003',N'Lê Bình',N'Quảng Nam','0166.1544595','2012-01-18','A','1500000',3)
INSERT INTO NhanVien VALUES ('NV004',N'Vũ Hoàng Dương',N'Tây Ninh','0167.5444333','2010-05-07','A','2000000',2)
INSERT INTO NhanVien VALUES ('NV005',N'Lê Ngọc Ánh',N'Bình Dương','0162.6536942','2015-06-14','B','1500000',2)

INSERT INTO DichVu VALUES ('DV01',N'An Lộc','2013-02-02',N'Vệ sinh bàn phím')
INSERT INTO DichVu VALUES ('DV02',N'Nguyễn Lan','2019-03-12',N'Vệ sinh Laptop')
INSERT INTO DichVu VALUES ('DV03',N'Nguyễn Lan','2017-04-24',N'Sửa chuột')
INSERT INTO DichVu VALUES ('DV04',N'Lê Ngọc Ánh','2018-10-14',N'Vệ sinh ổ đĩa')
INSERT INTO DichVu VALUES ('DV05',N'Vũ Hoàng Dương','2015-04-15',N'Thay pin laptop')

INSERT INTO NhaDauTu VALUES ('DT01',N'Nguyễn Kim',N'Vũng Tàu',N'0915.2465513','2012-04-13')
INSERT INTO NhaDauTu VALUES ('DT02',N'Lê Hạ',N'Kiên Giang',N'0916.2265711','2010-03-13')
INSERT INTO NhaDauTu VALUES ('DT03',N'Trần Cát',N'Long An',N'0336.2264983','2012-04-16')
INSERT INTO NhaDauTu VALUES ('DT04',N'Nguyễn Kiên',N'Bình Dương',N'0915.3365221','2010-11-17')
INSERT INTO NhaDauTu VALUES ('DT05',N'Lê Trọng',N'Đồng Nai',N'0555.3226441','2015-10-21')

/**********************************************************/

SELECT * FROM MatHang
SELECT * FROM KhachHang
SELECT * FROM LoaiHang
SELECT * FROM NhanVien
SELECT * FROM DichVu
SELECT * FROM NhaDauTu
--*******************Business Constraints************

Alter table [dbo].[MatHang]
Add constraint ck_mathang_giaMH
Check ([GiaMH] > 0)

Alter table [dbo].[NhanVien]
Add constraint ck_nhanvien_calamviec
Check ([CaLamViec] = 8)

Alter table [dbo].[KhachHang]
Add constraint df_khachhang_thevip
Default 7 for [TheVIP]