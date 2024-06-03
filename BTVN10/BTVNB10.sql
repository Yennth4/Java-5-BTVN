CREATE DATABASE B11
GO
USE B11
GO

CREATE TABLE [dbo].[loai_phong_ban](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](30) NULL,
	[so_luong] [int] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
)

CREATE TABLE [dbo].[phong_ban](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loai_phong_ban_id] [int] NULL,
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](30) NULL,
	[so_luong_phong_ban] [int] NULL,
	[so_luong_nhan_vien] [int] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
)