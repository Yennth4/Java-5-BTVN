CREATE DATABASE BTVN_B11
GO
USE BTVN_B11

CREATE TABLE [dbo].[tai_khoan_ngan_hang](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[ma] [varchar](20) NOT NULL,
	[ho_ten_chu_tai_khoan] [varchar](50) NULL,
	[so_tai_khoan] [varchar](50) NULL,
	[ten_ngan_hang] [nvarchar](50) NULL,
	[ten_chi_nhanh] [nvarchar](50) NULL,
	[dia_chi] [nvarchar](50) NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
)

CREATE TABLE [dbo].[co_so](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[tai_khoan_ngan_hang_id] [int] FOREIGN KEY REFERENCES [tai_khoan_ngan_hang]([id]),
	[ma] [varchar](20) NOT NULL,
	[ten_co_so] [nvarchar](50) NULL,
	[so_dien_thoai] [varchar](20) NULL,
	[ghi_chu] [nvarchar](100) NULL,
	[trang_thai] [int] NULL,
)

INSERT INTO [dbo].[tai_khoan_ngan_hang] ([ma], [ho_ten_chu_tai_khoan], [so_tai_khoan], [ten_ngan_hang], [ten_chi_nhanh], [dia_chi], [ghi_chu], [trang_thai])
VALUES 
('TK001', 'Nguyen Van A', '123456789', 'Vietcombank', 'Chi Nhanh 1', '123 Street, Hanoi', 'Ghi chu 1', 1),
('TK002', 'Tran Thi B', '987654321', 'Vietinbank', 'Chi Nhanh 2', '456 Street, HCMC', 'Ghi chu 2', 1),
('TK003', 'Le Van C', '111122223', 'Agribank', 'Chi Nhanh 3', '789 Street, Da Nang', 'Ghi chu 3', 1),
('TK004', 'Pham Thi D', '444455556', 'BIDV', 'Chi Nhanh 4', '101 Street, Hue', 'Ghi chu 4', 1),
('TK005', 'Hoang Van E', '999988887', 'Techcombank', 'Chi Nhanh 5', '202 Street, Can Tho', 'Ghi chu 5', 1);

INSERT INTO [dbo].[co_so] ([tai_khoan_ngan_hang_id], [ma], [ten_co_so], [so_dien_thoai], [ghi_chu], [trang_thai])
VALUES 
(1, 'CS001', 'Co So 1', '0123456789', 'Ghi chu co so 1', 1),
(2, 'CS002', 'Co So 2', '0987654321', 'Ghi chu co so 2', 1),
(3, 'CS003', 'Co So 3', '0234567891', 'Ghi chu co so 3', 1),
(4, 'CS004', 'Co So 4', '0789456123', 'Ghi chu co so 4', 1),
(5, 'CS005', 'Co So 5', '0678945123', 'Ghi chu co so 5', 1);

select * from [tai_khoan_ngan_hang]
select * from [co_so]