/******************************CREATE DATABASE********************************/

CREATE DATABASE QUAN_LY_MAT_HANG
GO 
USE QUAN_LY_MAT_HANG

/************************TAO BANG QUAN LY MAT HANG*************************/
-- Tạo bảng  MatHang
CREATE TABLE MatHang
( 
 	MaMH  		char(5), 
 	TenMH  		nvarchar(50), 
 	DTMH		nvarchar(20), 
 	GiaMH  		int, 
	Primary Key(MaMH)
) 
GO 
-- Tạo bảng KhachHang 
CREATE TABLE KhachHang 
( 
 	MaKH  		char(5), 
 	TenKH  		nvarchar(50), 
 	DiaChi		nvarchar(50), 
 	DienThoai  	varchar(20),
	TheVIP		bit,
	Primary Key(MaKH)
) 
GO 
-- Tạo bảng LoaiHang

CREATE TABLE LoaiHang
( 
 	MaLH  		char(5), 
 	TenLH  		nvarchar(50),
	MaMH		char(5),
	Constraint fk_MaMH
	Primary Key(MaLH),
	Foreign Key(MaMH) References Mathang(MaMH)
) 
GO 
--Tạo bảng NhanVien  
CREATE TABLE NhanVien 
( 
 	MaNV  		char(10),   
	Ten nvarchar(30),
 	DiaChi		nvarchar(50), 
 	DienThoai  	varchar(20),
	NgayLam		date,
	BangCap		nvarchar(50),
	Luong		money,
	CaLamViec	int,
	Primary Key(MaNV)
) 
GO 
--Tạo bảng DichVu 
CREATE TABLE DichVu 
( 
 	MaDV  		char(10),
	TenNVBT		nvarchar(50),
 	NgayBT  	date, 
 	CongViecTH  nvarchar(50),
	Primary Key(MaDV),
	--Foreign Key(MaNV) References NhanVien(MaNV),
	--Foreign Key(MaMH) References Mathang(MaMH)

) 
GO 
--Tạo bảng NhaDauTu  
CREATE TABLE NhaDauTu 
( 
 	MaNDT		char(5), 
 	TenNDT		nvarchar(50), 
 	DiaChi		nvarchar(50), 
 	DienThoai  	varchar(20),
	NgayKHD		date,
	Primary Key(MaNDT),
	--Foreign Key(MaLH) References Loaihang(MaLH)
) 
GO 



