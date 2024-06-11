CREATE DATABASE [FINALASS_FPOLYSHOP_SU24_SOF3010];
GO

USE [FINALASS_FPOLYSHOP_SU24_SOF3010]
GO

CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
)

CREATE TABLE [dbo].[MauSac](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
)

CREATE TABLE [dbo].[DongSP](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
)

CREATE TABLE [dbo].[ChiTietSP](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[IdSP] [int] NULL,
	[IdMauSac] [int] NULL,
	[IdDongSP] [int] NULL,
	[NamBH] [int] NULL,
	[MoTa] [nvarchar](50) NULL,
	[SoLuongTon] [int] NULL,
    [GiaNhap] [decimal](20, 0) NULL DEFAULT 0,
    [GiaBan] [decimal](20, 0) NULL DEFAULT 0,
	FOREIGN KEY ([IdSP]) REFERENCES [dbo].[SanPham]([Id]),
	FOREIGN KEY ([IdMauSac]) REFERENCES [dbo].[MauSac]([Id]),
    FOREIGN KEY ([IdDongSP]) REFERENCES [dbo].[DongSP]([Id])
)


CREATE TABLE [dbo].[KhachHang](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[TenDem] [nvarchar](30) NULL,
	[Ho] [nvarchar](30) NULL,
	[NgaySinh] [date] NULL DEFAULT NULL,
	[Sdt] [varchar](30) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
	[MatKhau] [varchar](max) NULL DEFAULT NULL,
)

CREATE TABLE [dbo].[ChucVu](
	[Id] [int] IDENTITY(1,1)PRIMARY KEY NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
) 

CREATE TABLE [dbo].[CuaHang](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
) 


CREATE TABLE [dbo].[NhanVien](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[TenDem] [nvarchar](30) NULL,
	[Ho] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [date] NULL DEFAULT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[MatKhau] [varchar](max) NULL DEFAULT NULL,
	[IdCH] [int] NULL,
    [IdCV] [int] NULL,
    [IdGuiBC] [int] NULL,
    [TrangThai] [int] NULL DEFAULT 0,
    FOREIGN KEY (IdCH) REFERENCES [dbo].[CuaHang]([Id]),
    FOREIGN KEY (IdCV) REFERENCES [dbo].[ChucVu]([Id]),
    FOREIGN KEY (IdGuiBC) REFERENCES [dbo].[NhanVien]([Id])
)

CREATE TABLE [dbo].[GioHang](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[IdKH] [int] NULL,
	[IdNV] [int] NULL,
	[Ma] [varchar](20) NULL,
	[NgayTao] [date] NULL DEFAULT NULL,
    [NgayThanhToan] [date] NULL DEFAULT NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[TinhTrang] [int] NULL DEFAULT 0,
	FOREIGN KEY ([IdKH]) REFERENCES [dbo].[KhachHang]([Id]),
    FOREIGN KEY ([IdNV]) REFERENCES [dbo].[NhanVien]([Id])
) 

CREATE TABLE [dbo].[GioHangChiTiet](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[IdGioHang] [int] NOT NULL,
    [IdChiTietSP] [int] NOT NULL,
    [SoLuong] [int] NULL,
    [DonGia] [decimal](20, 0) NULL DEFAULT 0,
    [DonGiaKhiGiam] [decimal](20, 0) NULL DEFAULT 0,
    FOREIGN KEY (IdGioHang) REFERENCES [dbo].[GioHang]([Id]),
    FOREIGN KEY (IdChiTietSP) REFERENCES [dbo].[ChiTietSP]([Id])
) 

CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[IdKH] [int] NULL,
	[IdNV] [int] NULL,
	[Ma] [varchar](20) NULL,
	[NgayTao] [date] NULL DEFAULT NULL,
    [NgayThanhToan] [date] NULL DEFAULT NULL,
    [NgayShip] [date] NULL DEFAULT NULL,
    [NgayNhan] [date] NULL DEFAULT NULL,
    [TinhTrang] [int] NULL DEFAULT 0,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	FOREIGN KEY ([IdKH]) REFERENCES [dbo].[KhachHang]([Id]),
    FOREIGN KEY ([IdNV]) REFERENCES [dbo].[NhanVien]([Id])
) 

CREATE TABLE [dbo].[HoaDonChiTiet](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[IdHoaDon] [int] NOT NULL,
    [IdGioHang] [int] NOT NULL, 
    [IdChiTietSP] [int] NOT NULL, 
    [SoLuong] [int] NULL,
    [DonGia] [decimal](20, 0) NULL DEFAULT 0,
    FOREIGN KEY (IdHoaDon) REFERENCES [dbo].[HoaDon]([Id]),
    FOREIGN KEY (IdGioHang) REFERENCES [dbo].[GioHang]([Id]),
    FOREIGN KEY (IdChiTietSP) REFERENCES [dbo].[ChiTietSP]([Id])
)

-- Tạo 3 bản ghi cho bảng SanPham
INSERT INTO [dbo].[SanPham] ([Ma], [Ten])
VALUES 
    ('SP001', N'Điện thoại Samsung Galaxy S21'),
    ('SP002', 'Laptop Dell XPS 13'),
    ('SP003', 'Tai nghe Sony WH-1000XM4');

-- Tạo 3 bản ghi cho bảng MauSac
INSERT INTO [dbo].[MauSac] ([Ma], [Ten])
VALUES 
    ('MS001', 'Đen'),
    ('MS002', N'Trắng'),
    ('MS003', N'Xám');

-- Tạo 3 bản ghi cho bảng DongSP
INSERT INTO [dbo].[DongSP] ([Ma], [Ten])
VALUES 
    ('DONG001', 'Điện thoại di động'),
    ('DONG002', 'Laptop'),
    ('DONG003', 'Tai nghe');

-- Tạo 3 bản ghi cho bảng ChiTietSP
INSERT INTO [dbo].[ChiTietSP] ([IdSP],[IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan])
VALUES 
    (1, 1, 1, 2023, 'Điện thoại cao cấp', 50, 20000000, 25000000),
    (2, 2, 2, 2022, 'Laptop siêu mỏng', 30, 30000000, 35000000),
    (3, 3, 3, 2024, 'Tai nghe chống ồn', 20, 4000000, 5000000);

-- Tạo 3 bản ghi cho bảng KhachHang
INSERT INTO [dbo].[KhachHang] ([Ma], [Ten], [TenDem], [Ho], [NgaySinh], [Sdt], [DiaChi], [ThanhPho], [QuocGia], [MatKhau])
VALUES 
    ('KH001', 'Nguyễn Văn', 'A', 'An', '1990-01-01', '0123456789', '123 Đường ABC', 'Hà Nội', 'Việt Nam', 'khachhang1@123'),
    ('KH002', 'Trần Thị', 'B', 'Bình', '1995-05-05', '0987654321', '456 Đường XYZ', 'Hồ Chí Minh', 'Việt Nam', 'khachhang2@123'),
    ('KH003', 'Lê', 'C', 'Chính', '1988-10-10', '0369874562', '789 Đường DEF', 'Đà Nẵng', 'Việt Nam', 'khachhang3@123');

-- Tạo 3 bản ghi cho bảng ChucVu
INSERT INTO [dbo].[ChucVu] ([Ma], [Ten])
VALUES 
    ('CV001', 'Quản lý'),
    ('CV002', 'Nhân viên bán hàng'),
    ('CV003', 'Nhân viên kho');

-- Tạo 3 bản ghi cho bảng CuaHang
INSERT INTO [dbo].[CuaHang] ([Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia])
VALUES 
    ('CH001', N'Cửa hàng Hà Nội', N'123 Đường ABC', N'Hà Nội', N'Việt Nam'),
    ('CH002', N'Cửa hàng Hồ Chí Minh', N'456 Đường XYZ', N'Hồ Chí Minh', N'Việt Nam'),
    ('CH003', N'Cửa hàng Đà Nẵng', N'789 Đường DEF', N'Đà Nẵng', N'Việt Nam');

-- Tạo 3 bản ghi cho bảng NhanVien
INSERT INTO [dbo].[NhanVien] ([Ma], [Ten], [TenDem], [Ho], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [MatKhau], [IdCH], [IdCV], [IdGuiBC], [TrangThai])
VALUES 
    ('NV001', 'Trần Văn', 'A', 'Anh', 'Nam', '1990-01-01', '123 Đường ABC', '0123456789', 'nhanvien1@123', 1, 1, NULL, 1),
    ('NV002', 'Lê Thị', 'B', 'Bình', 'Nữ', '1995-05-05', '456 Đường XYZ', '0987654321', 'nhanvien2@123', 2, 2, NULL, 1),
    ('NV003', 'Nguyễn', 'C', 'Chính', 'Nam', '1988-10-10', '789 Đường DEF', '0369874562', 'nhanvien3@123', 3, 3, NULL, 1);

-- Tạo 3 bản ghi cho bảng GioHang
INSERT INTO [dbo].[GioHang] ([IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [DiaChi], [Sdt], [TinhTrang])
VALUES 
    (1, 1, 'GH001', '2024-06-01', NULL, 'Nguyễn Văn A', '123 Đường ABC', '0123456789', 0),
    (2, 2, 'GH002', '2024-06-02', NULL, 'Trần Thị B', '456 Đường XYZ', '0987654321', 0),
    (3, 3, 'GH003', '2024-06-03', NULL, 'Lê C', '789 Đường DEF', '0369874562', 0);

-- Tạo 3 bản ghi cho bảng HoaDon
INSERT INTO [dbo].[HoaDon] ([IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt])
VALUES 
    (1, 1, 'HD001', '2024-06-01', NULL, NULL, NULL, 0, 'Nguyễn Văn A', '123 Đường ABC', '0123456789'),
    (2, 2, 'HD002', '2024-06-02', NULL, NULL, NULL, 0, 'Trần Thị B', '456 Đường XYZ', '0987654321'),
    (3, 3, 'HD003', '2024-06-03', NULL, NULL, NULL, 0, 'Lê C', '789 Đường DEF', '0369874562');

-- Tạo 3 bản ghi cho bảng GioHangChiTiet
INSERT INTO [dbo].[GioHangChiTiet] ([IdGioHang], [IdChiTietSP], [SoLuong], [DonGia], [DonGiaKhiGiam])
VALUES 
    (1, 1, 2, 25000000, 0),
    (2, 2, 1, 35000000, 0),
    (3, 3, 3, 5000000, 0);

-- Tạo 3 bản ghi cho bảng HoaDonChiTiet
INSERT INTO [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdGioHang], [IdChiTietSP], [SoLuong], [DonGia])
VALUES 
    (1, 1, 1, 2, 25000000),
    (2, 2, 2, 1, 35000000),
    (3, 3, 3, 3, 5000000);


select * from ChiTietSP
select * from ChucVu
select * from CuaHang
select * from DongSP
select * from GioHang
select * from GioHangChiTiet
select * from HoaDon
select * from HoaDonChiTiet
select * from KhachHang
select * from MauSac
select * from NhanVien
select * from SanPham

CREATE TABLE [dbo].[dich_vu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loai_dich_vu_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[ten] [nvarchar](30) NULL,
	[don_vi_tinh] [nvarchar](30) NULL,
	[don_gia] [decimal](20, 0) NULL,
	[mo_ta] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL
)

CREATE TABLE [dbo].[dich_vu_su_dung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dich_vu_id] [int] NULL,
	[chi_tiet_hoa_don_id] [int] NULL,
	[ma] [varchar](20) NULL,
	[ten] [varchar](50) NULL,
	[so_luong] [int] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
	[ngay_tao] [date] NULL,
	[ngay_chinh_sua] [date] NULL
)

INSERT INTO [dbo].[dich_vu] (loai_dich_vu_id, ma, ten, don_vi_tinh, don_gia, mo_ta, trang_thai, ngay_tao, ngay_chinh_sua)
VALUES 
(1, 'DV001', 'Dich Vu A', 'Don vi 1', 100000, 'Mo ta dich vu A', 1, '2023-01-01', '2023-01-02'),
(2, 'DV002', 'Dich Vu B', 'Don vi 2', 200000, 'Mo ta dich vu B', 1, '2023-01-03', '2023-01-04'),
(1, 'DV003', 'Dich Vu C', 'Don vi 3', 150000, 'Mo ta dich vu C', 1, '2023-01-05', '2023-01-06'),
(3, 'DV004', 'Dich Vu D', 'Don vi 4', 300000, 'Mo ta dich vu D', 0, '2023-01-07', '2023-01-08'),
(2, 'DV005', 'Dich Vu E', 'Don vi 5', 250000, 'Mo ta dich vu E', 1, '2023-01-09', '2023-01-10');

INSERT INTO [dbo].[dich_vu_su_dung] (dich_vu_id, chi_tiet_hoa_don_id, ma, ten, so_luong, ghi_chu, trang_thai, ngay_tao, ngay_chinh_sua)
VALUES 
(1, 101, 'DSD001', 'Dich Vu Su Dung A', 10, 'Ghi chu A', 1, '2023-02-01', '2023-02-02'),
(2, 102, 'DSD002', 'Dich Vu Su Dung B', 20, 'Ghi chu B', 1, '2023-02-03', '2023-02-04'),
(3, 103, 'DSD003', 'Dich Vu Su Dung C', 15, 'Ghi chu C', 1, '2023-02-05', '2023-02-06'),
(4, 104, 'DSD004', 'Dich Vu Su Dung D', 30, 'Ghi chu D', 0, '2023-02-07', '2023-02-08'),
(5, 105, 'DSD005', 'Dich Vu Su Dung E', 25, 'Ghi chu E', 1, '2023-02-09', '2023-02-10');
