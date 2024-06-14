CREATE DATABASE SOF3021_Final
GO
USE [SOF3021_Final]
GO
/****** Object:  Table [dbo].[chi_tiet_hoa_don]    Script Date: 10/05/2024 7:18:20 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_hoa_don](
	[gia_phong] [numeric](38, 2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_hoa_don] [int] NULL,
	[id_phong] [int] NULL,
	[qua_gio] [int] NULL,
	[thoi_gian_thue] [int] NULL,
	[thoi_gian_thue_lam_tron] [int] NULL,
	[ngay_gio_lap] [datetime2](6) NULL,
	[ngay_gio_nhan_phong] [datetime2](6) NULL,
	[ngay_gio_tra_phong] [datetime2](6) NULL,
	[ghi_chu] [varchar](255) NULL,
	[hinh_thuc_thue] [varchar](255) NULL,
	[thoi_gian_thue_du_kien] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chuc_vu]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuc_vu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_phong_ban] [int] NULL,
	[den_ngay] [datetime2](6) NULL,
	[ngay_bat_dau_ap_dung] [datetime2](6) NULL,
	[ghi_chu] [varchar](255) NULL,
	[ten_chuc_vu] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[co_so]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[co_so](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_tai_khoan_ngan_hang] [int] NULL,
	[email] [varchar](255) NULL,
	[ghi_chu] [varchar](255) NULL,
	[ho_ten_nguoi_dai_dien] [varchar](255) NULL,
	[ma_co_so] [varchar](255) NULL,
	[ma_so_thue] [varchar](255) NULL,
	[so_dien_thoai] [varchar](255) NULL,
	[ten_co_so] [varchar](255) NULL,
	[ten_quan_huyen] [varchar](255) NULL,
	[ten_tinh_thanh_pho] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dat_phong]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dat_phong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ghi_chu] [varchar](255) NULL,
	[ma_dat_phong] [varchar](255) NULL,
	[ngay_gio_dat] [datetime2](6) NULL,
	[so_luong_khach] [int] NULL,
	[so_luong_phong_dat] [int] NULL,
	[thoi_gian_luu_tru] [int] NULL,
	[trang_thai] [varchar](255) NULL,
	[id_khach_hang] [int] NULL,
	[id_loai_phong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dich_vu]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dich_vu](
	[don_gia] [numeric](38, 2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_loai_dich_vu] [int] NULL,
	[don_vi_tien] [varchar](255) NULL,
	[don_vi_tinh] [varchar](255) NULL,
	[mo_ta] [varchar](255) NULL,
	[ten_dich_vu] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[giao_ca]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giao_ca](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_tai_khoan] [int] NULL,
	[so_tien_dau_ngay] [numeric](38, 2) NULL,
	[tong_tien_chenh_lech] [numeric](38, 2) NULL,
	[tong_tien_hoa_don] [numeric](38, 2) NULL,
	[tong_tien_phat_sinh] [numeric](38, 2) NULL,
	[tong_tien_tam_tinh] [numeric](38, 2) NULL,
	[tong_tien_thuc_te] [numeric](38, 2) NULL,
	[trang_thai_tru_tien] [int] NULL,
	[den_ngay] [datetime2](6) NULL,
	[ngay_bat_dau_ap_dung] [datetime2](6) NULL,
	[don_vi_tinh] [varchar](255) NULL,
	[ghi_chu] [varchar](255) NULL,
	[ten_ca] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giao_dich]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giao_dich](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ngay_gio_thanh_toan] [datetime2](6) NULL,
	[loai_hinh_thuc_thanh_toan] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[coc_tien] [numeric](38, 2) NULL,
	[giam_gia] [numeric](38, 2) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_dat_phong] [int] NULL,
	[id_giao_dich] [int] NULL,
	[id_khach_hang] [int] NULL,
	[id_tai_khoan] [int] NULL,
	[phu_thu] [numeric](38, 2) NULL,
	[thuevat] [numeric](38, 2) NULL,
	[tien_khach_dua] [numeric](38, 2) NULL,
	[tien_tra_lai] [numeric](38, 2) NULL,
	[tong_tien] [numeric](38, 2) NULL,
	[ghi_chu] [varchar](255) NULL,
	[ma_hoa_don] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[gioi_tinh] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cccd] [varchar](255) NULL,
	[dia_chi] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[ma_khach_hang] [varchar](255) NULL,
	[quoc_tinh] [varchar](255) NULL,
	[so_dien_thoai] [varchar](255) NULL,
	[ten_khach_hang] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lau]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lau](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_co_so] [int] NULL,
	[so_luong_lau] [int] NULL,
	[ghi_chu] [varchar](255) NULL,
	[ten_lau] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_dich_vu]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_dich_vu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mo_ta] [varchar](255) NULL,
	[ten_loai_dich_vu] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_phong]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_phong](
	[don_gia_qua_dem] [numeric](38, 2) NULL,
	[don_gia_theo_gio] [numeric](38, 2) NULL,
	[ho_ten_nguoi_dai_dien] [nvarchar](255) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tien_qua_gio] [numeric](38, 2) NULL,
	[ghi_chu] [varchar](255) NULL,
	[so_nguoi] [varchar](255) NULL,
	[ten_loai_phong] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_phong_ban]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_phong_ban](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[so_luong_phong_ban] [int] NULL,
	[ghi_chu] [varchar](255) NULL,
	[ma_loai_phong_ban] [varchar](255) NULL,
	[ten_loai_phong_ban] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phong]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_co_so] [int] NULL,
	[id_lau] [int] NULL,
	[id_loai_phong] [int] NULL,
	[ghi_chu] [varchar](255) NULL,
	[so_luong_phong] [varchar](255) NULL,
	[ten_phong] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phong_ban]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong_ban](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_loai_phong_ban] [int] NULL,
	[so_luong_nhan_vien] [int] NULL,
	[so_luong_phong_ban] [int] NULL,
	[ghi_chu] [varchar](255) NULL,
	[ten_phong_ban] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quyen_han]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quyen_han](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mo_ta] [varchar](255) NULL,
	[ten_quyen_han] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan](
	[gioi_tinh] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_chuc_vu] [int] NULL,
	[id_co_so] [int] NULL,
	[id_phong_ban] [int] NULL,
	[anh_dai_dien] [varchar](255) NULL,
	[cccd] [varchar](255) NULL,
	[dia_chi] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[ho_ten_chutk] [varchar](255) NULL,
	[mat_khau] [varchar](255) NULL,
	[ngay_ket_thuc_hop_dong] [varchar](255) NULL,
	[ngay_thang_nam_sinh] [varchar](255) NULL,
	[ngay_vao_lam] [varchar](255) NULL,
	[so_dien_thoai] [varchar](255) NULL,
	[ten_tai_khoan] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan_ngan_hang]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan_ngan_hang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dia_chicn] [varchar](255) NULL,
	[ghi_chu] [varchar](255) NULL,
	[ho_ten_chutknh] [varchar](255) NULL,
	[so_tai_khoan] [varchar](255) NULL,
	[ten_chi_nhanh] [varchar](255) NULL,
	[ten_ngan_hang] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan_quyen_han]    Script Date: 10/05/2024 7:18:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan_quyen_han](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_quyen_han] [int] NULL,
	[id_tai_khoan] [int] NULL,
	[ma_su_dung] [varchar](255) NULL,
	[mo_ta] [varchar](255) NULL,
	[trang_thai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[chi_tiet_hoa_don] ON 

INSERT [dbo].[chi_tiet_hoa_don] ([gia_phong], [id], [id_hoa_don], [id_phong], [qua_gio], [thoi_gian_thue], [thoi_gian_thue_lam_tron], [ngay_gio_lap], [ngay_gio_nhan_phong], [ngay_gio_tra_phong], [ghi_chu], [hinh_thuc_thue], [thoi_gian_thue_du_kien], [trang_thai]) VALUES (CAST(8.00 AS Numeric(38, 2)), 11, 31, 6, 1, 64, 1, CAST(N'2024-01-14T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-20T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-16T00:00:00.0000000' AS DateTime2), N'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien', N'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', N'1', N'1')
INSERT [dbo].[chi_tiet_hoa_don] ([gia_phong], [id], [id_hoa_don], [id_phong], [qua_gio], [thoi_gian_thue], [thoi_gian_thue_lam_tron], [ngay_gio_lap], [ngay_gio_nhan_phong], [ngay_gio_tra_phong], [ghi_chu], [hinh_thuc_thue], [thoi_gian_thue_du_kien], [trang_thai]) VALUES (CAST(50.00 AS Numeric(38, 2)), 12, 32, 7, 2, 73, 2, CAST(N'2023-09-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-04-04T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-22T00:00:00.0000000' AS DateTime2), N'turpis eget elit sodales scelerisque mauris sit amet eros suspendisse', N'purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat', N'2', N'2')
INSERT [dbo].[chi_tiet_hoa_don] ([gia_phong], [id], [id_hoa_don], [id_phong], [qua_gio], [thoi_gian_thue], [thoi_gian_thue_lam_tron], [ngay_gio_lap], [ngay_gio_nhan_phong], [ngay_gio_tra_phong], [ghi_chu], [hinh_thuc_thue], [thoi_gian_thue_du_kien], [trang_thai]) VALUES (CAST(14.00 AS Numeric(38, 2)), 13, 33, 8, 3, 2, 3, CAST(N'2023-07-16T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-03T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-06T00:00:00.0000000' AS DateTime2), N'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum', N'nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam', N'3', N'3')
INSERT [dbo].[chi_tiet_hoa_don] ([gia_phong], [id], [id_hoa_don], [id_phong], [qua_gio], [thoi_gian_thue], [thoi_gian_thue_lam_tron], [ngay_gio_lap], [ngay_gio_nhan_phong], [ngay_gio_tra_phong], [ghi_chu], [hinh_thuc_thue], [thoi_gian_thue_du_kien], [trang_thai]) VALUES (CAST(61.00 AS Numeric(38, 2)), 14, 34, 9, 4, 30, 4, CAST(N'2023-11-14T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-01T00:00:00.0000000' AS DateTime2), CAST(N'2024-01-06T00:00:00.0000000' AS DateTime2), N'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit', N'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum', N'4', N'4')
INSERT [dbo].[chi_tiet_hoa_don] ([gia_phong], [id], [id_hoa_don], [id_phong], [qua_gio], [thoi_gian_thue], [thoi_gian_thue_lam_tron], [ngay_gio_lap], [ngay_gio_nhan_phong], [ngay_gio_tra_phong], [ghi_chu], [hinh_thuc_thue], [thoi_gian_thue_du_kien], [trang_thai]) VALUES (CAST(87.00 AS Numeric(38, 2)), 15, 35, 10, 5, 51, 5, CAST(N'2023-11-07T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-06T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-16T00:00:00.0000000' AS DateTime2), N'et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor', N'molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam', N'5', N'5')
SET IDENTITY_INSERT [dbo].[chi_tiet_hoa_don] OFF
GO
SET IDENTITY_INSERT [dbo].[chuc_vu] ON 

INSERT [dbo].[chuc_vu] ([id], [id_phong_ban], [den_ngay], [ngay_bat_dau_ap_dung], [ghi_chu], [ten_chuc_vu], [trang_thai]) VALUES (6, 1, CAST(N'2024-03-23T00:00:00.0000000' AS DateTime2), CAST(N'2024-04-29T00:00:00.0000000' AS DateTime2), N'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec', N'sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel', N'1')
INSERT [dbo].[chuc_vu] ([id], [id_phong_ban], [den_ngay], [ngay_bat_dau_ap_dung], [ghi_chu], [ten_chuc_vu], [trang_thai]) VALUES (7, 2, CAST(N'2023-07-28T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-26T00:00:00.0000000' AS DateTime2), N'diam vitae quam suspendisse potenti nullam porttitor lacus at turpis', N'pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', N'2')
INSERT [dbo].[chuc_vu] ([id], [id_phong_ban], [den_ngay], [ngay_bat_dau_ap_dung], [ghi_chu], [ten_chuc_vu], [trang_thai]) VALUES (8, 3, CAST(N'2023-12-16T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-27T00:00:00.0000000' AS DateTime2), N'integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at', N'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu', N'3')
INSERT [dbo].[chuc_vu] ([id], [id_phong_ban], [den_ngay], [ngay_bat_dau_ap_dung], [ghi_chu], [ten_chuc_vu], [trang_thai]) VALUES (9, 4, CAST(N'2023-10-25T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-15T00:00:00.0000000' AS DateTime2), N'proin eu mi nulla ac enim in tempor turpis nec euismod', N'faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet', N'4')
INSERT [dbo].[chuc_vu] ([id], [id_phong_ban], [den_ngay], [ngay_bat_dau_ap_dung], [ghi_chu], [ten_chuc_vu], [trang_thai]) VALUES (10, 5, CAST(N'2024-02-13T00:00:00.0000000' AS DateTime2), CAST(N'2023-06-07T00:00:00.0000000' AS DateTime2), N'massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam', N'nec dui luctus rutrum nulla tellus in sagittis dui vel', N'5')
SET IDENTITY_INSERT [dbo].[chuc_vu] OFF
GO
SET IDENTITY_INSERT [dbo].[co_so] ON 

INSERT [dbo].[co_so] ([id], [id_tai_khoan_ngan_hang], [email], [ghi_chu], [ho_ten_nguoi_dai_dien], [ma_co_so], [ma_so_thue], [so_dien_thoai], [ten_co_so], [ten_quan_huyen], [ten_tinh_thanh_pho], [trang_thai]) VALUES (1, 1, N'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit', N'proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum', N'nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis', N'purus eu magna vulputate luctus cum sociis natoque penatibus et magnis', N'1', N'1', N'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus', N'nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio', N'eu felis fusce posuere felis sed lacus morbi sem mauris laoreet', N'1')
INSERT [dbo].[co_so] ([id], [id_tai_khoan_ngan_hang], [email], [ghi_chu], [ho_ten_nguoi_dai_dien], [ma_co_so], [ma_so_thue], [so_dien_thoai], [ten_co_so], [ten_quan_huyen], [ten_tinh_thanh_pho], [trang_thai]) VALUES (2, 2, N'sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus', N'vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque', N'integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus', N'vitae consectetuer eget rutrum at lorem integer tincidunt ante vel', N'2', N'2', N'a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo', N'eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper', N'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor', N'2')
INSERT [dbo].[co_so] ([id], [id_tai_khoan_ngan_hang], [email], [ghi_chu], [ho_ten_nguoi_dai_dien], [ma_co_so], [ma_so_thue], [so_dien_thoai], [ten_co_so], [ten_quan_huyen], [ten_tinh_thanh_pho], [trang_thai]) VALUES (3, 3, N'sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl', N'nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo', N'mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem', N'tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac', N'3', N'3', N'sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl', N'erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus', N'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit', N'3')
INSERT [dbo].[co_so] ([id], [id_tai_khoan_ngan_hang], [email], [ghi_chu], [ho_ten_nguoi_dai_dien], [ma_co_so], [ma_so_thue], [so_dien_thoai], [ten_co_so], [ten_quan_huyen], [ten_tinh_thanh_pho], [trang_thai]) VALUES (4, 4, N'etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras', N'quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis', N'in porttitor pede justo eu massa donec dapibus duis at', N'id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat', N'4', N'4', N'erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia', N'lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris', N'congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat', N'4')
INSERT [dbo].[co_so] ([id], [id_tai_khoan_ngan_hang], [email], [ghi_chu], [ho_ten_nguoi_dai_dien], [ma_co_so], [ma_so_thue], [so_dien_thoai], [ten_co_so], [ten_quan_huyen], [ten_tinh_thanh_pho], [trang_thai]) VALUES (5, 5, N'dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae', N'nisl aenean lectus pellentesque eget nunc donec quis orci eget', N'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla', N'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at', N'5', N'5', N'integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in', N'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', N'in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur', N'5')
SET IDENTITY_INSERT [dbo].[co_so] OFF
GO
SET IDENTITY_INSERT [dbo].[dat_phong] ON 

INSERT [dbo].[dat_phong] ([id], [ghi_chu], [ma_dat_phong], [ngay_gio_dat], [so_luong_khach], [so_luong_phong_dat], [thoi_gian_luu_tru], [trang_thai], [id_khach_hang], [id_loai_phong]) VALUES (6, N'nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula', N'viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui', CAST(N'2024-03-30T00:00:00.0000000' AS DateTime2), 1, 1, 1, N'1', 1, 7)
INSERT [dbo].[dat_phong] ([id], [ghi_chu], [ma_dat_phong], [ngay_gio_dat], [so_luong_khach], [so_luong_phong_dat], [thoi_gian_luu_tru], [trang_thai], [id_khach_hang], [id_loai_phong]) VALUES (7, N'etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida', N'quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus', CAST(N'2024-01-20T00:00:00.0000000' AS DateTime2), 2, 2, 2, N'2', 2, 8)
INSERT [dbo].[dat_phong] ([id], [ghi_chu], [ma_dat_phong], [ngay_gio_dat], [so_luong_khach], [so_luong_phong_dat], [thoi_gian_luu_tru], [trang_thai], [id_khach_hang], [id_loai_phong]) VALUES (8, N'in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis', N'suscipit nulla elit ac nulla sed vel enim sit amet nunc', CAST(N'2023-07-06T00:00:00.0000000' AS DateTime2), 3, 3, 3, N'3', 3, 9)
INSERT [dbo].[dat_phong] ([id], [ghi_chu], [ma_dat_phong], [ngay_gio_dat], [so_luong_khach], [so_luong_phong_dat], [thoi_gian_luu_tru], [trang_thai], [id_khach_hang], [id_loai_phong]) VALUES (9, N'volutpat erat quisque erat eros viverra eget congue eget semper', N'habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris', CAST(N'2023-07-19T00:00:00.0000000' AS DateTime2), 4, 4, 4, N'4', 4, 10)
INSERT [dbo].[dat_phong] ([id], [ghi_chu], [ma_dat_phong], [ngay_gio_dat], [so_luong_khach], [so_luong_phong_dat], [thoi_gian_luu_tru], [trang_thai], [id_khach_hang], [id_loai_phong]) VALUES (10, N'praesent blandit lacinia erat vestibulum sed magna at nunc commodo', N'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris', CAST(N'2023-05-21T00:00:00.0000000' AS DateTime2), 5, 5, 5, N'5', 5, 11)
SET IDENTITY_INSERT [dbo].[dat_phong] OFF
GO
SET IDENTITY_INSERT [dbo].[dich_vu] ON 

INSERT [dbo].[dich_vu] ([don_gia], [id], [id_loai_dich_vu], [don_vi_tien], [don_vi_tinh], [mo_ta], [ten_dich_vu], [trang_thai]) VALUES (CAST(95.00 AS Numeric(38, 2)), 1, 1, N'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id', N'id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque', N'pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta', N'turpis a pede posuere nonummy integer non velit donec diam neque', N'1')
INSERT [dbo].[dich_vu] ([don_gia], [id], [id_loai_dich_vu], [don_vi_tien], [don_vi_tinh], [mo_ta], [ten_dich_vu], [trang_thai]) VALUES (CAST(34.00 AS Numeric(38, 2)), 2, 2, N'donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi', N'commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum', N'molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est', N'etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut', N'2')
INSERT [dbo].[dich_vu] ([don_gia], [id], [id_loai_dich_vu], [don_vi_tien], [don_vi_tinh], [mo_ta], [ten_dich_vu], [trang_thai]) VALUES (CAST(84.00 AS Numeric(38, 2)), 3, 3, N'sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi', N'donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante', N'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean', N'eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet', N'3')
INSERT [dbo].[dich_vu] ([don_gia], [id], [id_loai_dich_vu], [don_vi_tien], [don_vi_tinh], [mo_ta], [ten_dich_vu], [trang_thai]) VALUES (CAST(51.00 AS Numeric(38, 2)), 4, 4, N'nonummy integer non velit donec diam neque vestibulum eget vulputate ut', N'maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', N'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', N'rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum', N'4')
INSERT [dbo].[dich_vu] ([don_gia], [id], [id_loai_dich_vu], [don_vi_tien], [don_vi_tinh], [mo_ta], [ten_dich_vu], [trang_thai]) VALUES (CAST(89.00 AS Numeric(38, 2)), 5, 5, N'diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam', N'donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit', N'est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in', N'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula', N'5')
SET IDENTITY_INSERT [dbo].[dich_vu] OFF
GO
SET IDENTITY_INSERT [dbo].[giao_ca] ON 

INSERT [dbo].[giao_ca] ([id], [id_tai_khoan], [so_tien_dau_ngay], [tong_tien_chenh_lech], [tong_tien_hoa_don], [tong_tien_phat_sinh], [tong_tien_tam_tinh], [tong_tien_thuc_te], [trang_thai_tru_tien], [den_ngay], [ngay_bat_dau_ap_dung], [don_vi_tinh], [ghi_chu], [ten_ca], [trang_thai]) VALUES (7, 11, CAST(88.00 AS Numeric(38, 2)), CAST(6.00 AS Numeric(38, 2)), CAST(99.00 AS Numeric(38, 2)), CAST(83.00 AS Numeric(38, 2)), CAST(2.00 AS Numeric(38, 2)), CAST(46.00 AS Numeric(38, 2)), 1, CAST(N'2023-08-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-24T00:00:00.0000000' AS DateTime2), N'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius', N'eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper', N'neque aenean auctor gravida sem praesent id massa id nisl venenatis', N'1')
INSERT [dbo].[giao_ca] ([id], [id_tai_khoan], [so_tien_dau_ngay], [tong_tien_chenh_lech], [tong_tien_hoa_don], [tong_tien_phat_sinh], [tong_tien_tam_tinh], [tong_tien_thuc_te], [trang_thai_tru_tien], [den_ngay], [ngay_bat_dau_ap_dung], [don_vi_tinh], [ghi_chu], [ten_ca], [trang_thai]) VALUES (8, 12, CAST(39.00 AS Numeric(38, 2)), CAST(87.00 AS Numeric(38, 2)), CAST(7.00 AS Numeric(38, 2)), CAST(40.00 AS Numeric(38, 2)), CAST(90.00 AS Numeric(38, 2)), CAST(37.00 AS Numeric(38, 2)), 2, CAST(N'2023-07-21T00:00:00.0000000' AS DateTime2), CAST(N'2024-04-27T00:00:00.0000000' AS DateTime2), N'massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada', N'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', N'tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis', N'2')
INSERT [dbo].[giao_ca] ([id], [id_tai_khoan], [so_tien_dau_ngay], [tong_tien_chenh_lech], [tong_tien_hoa_don], [tong_tien_phat_sinh], [tong_tien_tam_tinh], [tong_tien_thuc_te], [trang_thai_tru_tien], [den_ngay], [ngay_bat_dau_ap_dung], [don_vi_tinh], [ghi_chu], [ten_ca], [trang_thai]) VALUES (9, 13, CAST(27.00 AS Numeric(38, 2)), CAST(60.00 AS Numeric(38, 2)), CAST(39.00 AS Numeric(38, 2)), CAST(35.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(59.00 AS Numeric(38, 2)), 3, CAST(N'2024-03-20T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-07T00:00:00.0000000' AS DateTime2), N'non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci', N'massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit', N'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed', N'3')
INSERT [dbo].[giao_ca] ([id], [id_tai_khoan], [so_tien_dau_ngay], [tong_tien_chenh_lech], [tong_tien_hoa_don], [tong_tien_phat_sinh], [tong_tien_tam_tinh], [tong_tien_thuc_te], [trang_thai_tru_tien], [den_ngay], [ngay_bat_dau_ap_dung], [don_vi_tinh], [ghi_chu], [ten_ca], [trang_thai]) VALUES (10, 14, CAST(85.00 AS Numeric(38, 2)), CAST(82.00 AS Numeric(38, 2)), CAST(74.00 AS Numeric(38, 2)), CAST(14.00 AS Numeric(38, 2)), CAST(18.00 AS Numeric(38, 2)), CAST(87.00 AS Numeric(38, 2)), 4, CAST(N'2023-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-29T00:00:00.0000000' AS DateTime2), N'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt', N'eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt', N'vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit', N'4')
INSERT [dbo].[giao_ca] ([id], [id_tai_khoan], [so_tien_dau_ngay], [tong_tien_chenh_lech], [tong_tien_hoa_don], [tong_tien_phat_sinh], [tong_tien_tam_tinh], [tong_tien_thuc_te], [trang_thai_tru_tien], [den_ngay], [ngay_bat_dau_ap_dung], [don_vi_tinh], [ghi_chu], [ten_ca], [trang_thai]) VALUES (11, 15, CAST(99.00 AS Numeric(38, 2)), CAST(7.00 AS Numeric(38, 2)), CAST(81.00 AS Numeric(38, 2)), CAST(35.00 AS Numeric(38, 2)), CAST(49.00 AS Numeric(38, 2)), CAST(71.00 AS Numeric(38, 2)), 5, CAST(N'2023-08-05T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-19T00:00:00.0000000' AS DateTime2), N'semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus', N'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra', N'nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis', N'5')
SET IDENTITY_INSERT [dbo].[giao_ca] OFF
GO
SET IDENTITY_INSERT [dbo].[giao_dich] ON 

INSERT [dbo].[giao_dich] ([id], [ngay_gio_thanh_toan], [loai_hinh_thuc_thanh_toan], [trang_thai]) VALUES (1, CAST(N'2024-04-13T00:00:00.0000000' AS DateTime2), N'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget', N'1')
INSERT [dbo].[giao_dich] ([id], [ngay_gio_thanh_toan], [loai_hinh_thuc_thanh_toan], [trang_thai]) VALUES (2, CAST(N'2024-05-08T00:00:00.0000000' AS DateTime2), N'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum', N'2')
INSERT [dbo].[giao_dich] ([id], [ngay_gio_thanh_toan], [loai_hinh_thuc_thanh_toan], [trang_thai]) VALUES (3, CAST(N'2024-05-06T00:00:00.0000000' AS DateTime2), N'in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus', N'3')
INSERT [dbo].[giao_dich] ([id], [ngay_gio_thanh_toan], [loai_hinh_thuc_thanh_toan], [trang_thai]) VALUES (4, CAST(N'2023-06-02T00:00:00.0000000' AS DateTime2), N'morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus', N'4')
INSERT [dbo].[giao_dich] ([id], [ngay_gio_thanh_toan], [loai_hinh_thuc_thanh_toan], [trang_thai]) VALUES (5, CAST(N'2023-07-04T00:00:00.0000000' AS DateTime2), N'sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor', N'5')
SET IDENTITY_INSERT [dbo].[giao_dich] OFF
GO
SET IDENTITY_INSERT [dbo].[hoa_don] ON 

INSERT [dbo].[hoa_don] ([coc_tien], [giam_gia], [id], [id_dat_phong], [id_giao_dich], [id_khach_hang], [id_tai_khoan], [phu_thu], [thuevat], [tien_khach_dua], [tien_tra_lai], [tong_tien], [ghi_chu], [ma_hoa_don], [trang_thai]) VALUES (CAST(42.00 AS Numeric(38, 2)), CAST(67.00 AS Numeric(38, 2)), 31, 6, 1, 1, 11, CAST(21.00 AS Numeric(38, 2)), CAST(26.00 AS Numeric(38, 2)), CAST(66.00 AS Numeric(38, 2)), CAST(94.00 AS Numeric(38, 2)), CAST(56.00 AS Numeric(38, 2)), N'sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet', N'eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor', N'1')
INSERT [dbo].[hoa_don] ([coc_tien], [giam_gia], [id], [id_dat_phong], [id_giao_dich], [id_khach_hang], [id_tai_khoan], [phu_thu], [thuevat], [tien_khach_dua], [tien_tra_lai], [tong_tien], [ghi_chu], [ma_hoa_don], [trang_thai]) VALUES (CAST(17.00 AS Numeric(38, 2)), CAST(80.00 AS Numeric(38, 2)), 32, 7, 2, 2, 12, CAST(98.00 AS Numeric(38, 2)), CAST(95.00 AS Numeric(38, 2)), CAST(90.00 AS Numeric(38, 2)), CAST(78.00 AS Numeric(38, 2)), CAST(19.00 AS Numeric(38, 2)), N'cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac', N'felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec', N'2')
INSERT [dbo].[hoa_don] ([coc_tien], [giam_gia], [id], [id_dat_phong], [id_giao_dich], [id_khach_hang], [id_tai_khoan], [phu_thu], [thuevat], [tien_khach_dua], [tien_tra_lai], [tong_tien], [ghi_chu], [ma_hoa_don], [trang_thai]) VALUES (CAST(100.00 AS Numeric(38, 2)), CAST(77.00 AS Numeric(38, 2)), 33, 8, 3, 3, 13, CAST(33.00 AS Numeric(38, 2)), CAST(84.00 AS Numeric(38, 2)), CAST(29.00 AS Numeric(38, 2)), CAST(73.00 AS Numeric(38, 2)), CAST(57.00 AS Numeric(38, 2)), N'velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros', N'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc', N'3')
INSERT [dbo].[hoa_don] ([coc_tien], [giam_gia], [id], [id_dat_phong], [id_giao_dich], [id_khach_hang], [id_tai_khoan], [phu_thu], [thuevat], [tien_khach_dua], [tien_tra_lai], [tong_tien], [ghi_chu], [ma_hoa_don], [trang_thai]) VALUES (CAST(29.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), 34, 9, 4, 4, 14, CAST(19.00 AS Numeric(38, 2)), CAST(4.00 AS Numeric(38, 2)), CAST(65.00 AS Numeric(38, 2)), CAST(11.00 AS Numeric(38, 2)), CAST(50.00 AS Numeric(38, 2)), N'vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo', N'pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut', N'4')
INSERT [dbo].[hoa_don] ([coc_tien], [giam_gia], [id], [id_dat_phong], [id_giao_dich], [id_khach_hang], [id_tai_khoan], [phu_thu], [thuevat], [tien_khach_dua], [tien_tra_lai], [tong_tien], [ghi_chu], [ma_hoa_don], [trang_thai]) VALUES (CAST(33.00 AS Numeric(38, 2)), CAST(72.00 AS Numeric(38, 2)), 35, 10, 5, 5, 15, CAST(65.00 AS Numeric(38, 2)), CAST(68.00 AS Numeric(38, 2)), CAST(93.00 AS Numeric(38, 2)), CAST(9.00 AS Numeric(38, 2)), CAST(11.00 AS Numeric(38, 2)), N'elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis', N'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec', N'5')
SET IDENTITY_INSERT [dbo].[hoa_don] OFF
GO
SET IDENTITY_INSERT [dbo].[khach_hang] ON 

INSERT [dbo].[khach_hang] ([gioi_tinh], [id], [cccd], [dia_chi], [email], [ma_khach_hang], [quoc_tinh], [so_dien_thoai], [ten_khach_hang], [trang_thai]) VALUES (1, 1, N'1', N'1', N'scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede', N'vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien', N'maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus', N'tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis', N'dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat', N'1')
INSERT [dbo].[khach_hang] ([gioi_tinh], [id], [cccd], [dia_chi], [email], [ma_khach_hang], [quoc_tinh], [so_dien_thoai], [ten_khach_hang], [trang_thai]) VALUES (2, 2, N'2', N'2', N'lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit', N'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', N'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque', N'auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed', N'in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut', N'2')
INSERT [dbo].[khach_hang] ([gioi_tinh], [id], [cccd], [dia_chi], [email], [ma_khach_hang], [quoc_tinh], [so_dien_thoai], [ten_khach_hang], [trang_thai]) VALUES (3, 3, N'3', N'3', N'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo', N'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus', N'erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non', N'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', N'congue etiam justo etiam pretium iaculis justo in hac habitasse platea', N'3')
INSERT [dbo].[khach_hang] ([gioi_tinh], [id], [cccd], [dia_chi], [email], [ma_khach_hang], [quoc_tinh], [so_dien_thoai], [ten_khach_hang], [trang_thai]) VALUES (4, 4, N'4', N'4', N'sed vestibulum sit amet cursus id turpis integer aliquet massa id', N'montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida', N'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor', N'vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', N'vel nulla eget eros elementum pellentesque quisque porta volutpat erat', N'4')
INSERT [dbo].[khach_hang] ([gioi_tinh], [id], [cccd], [dia_chi], [email], [ma_khach_hang], [quoc_tinh], [so_dien_thoai], [ten_khach_hang], [trang_thai]) VALUES (5, 5, N'5', N'5', N'sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum', N'neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio', N'sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed', N'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer', N'sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', N'5')
SET IDENTITY_INSERT [dbo].[khach_hang] OFF
GO
SET IDENTITY_INSERT [dbo].[lau] ON 

INSERT [dbo].[lau] ([id], [id_co_so], [so_luong_lau], [ghi_chu], [ten_lau], [trang_thai]) VALUES (2, 1, 1, N'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc', N'in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec', N'1')
INSERT [dbo].[lau] ([id], [id_co_so], [so_luong_lau], [ghi_chu], [ten_lau], [trang_thai]) VALUES (3, 2, 2, N'sapien sapien non mi integer ac neque duis bibendum morbi non quam', N'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque', N'2')
INSERT [dbo].[lau] ([id], [id_co_so], [so_luong_lau], [ghi_chu], [ten_lau], [trang_thai]) VALUES (4, 3, 3, N'eros elementum pellentesque quisque porta volutpat erat quisque erat eros', N'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio', N'3')
INSERT [dbo].[lau] ([id], [id_co_so], [so_luong_lau], [ghi_chu], [ten_lau], [trang_thai]) VALUES (5, 4, 4, N'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque', N'ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit', N'4')
INSERT [dbo].[lau] ([id], [id_co_so], [so_luong_lau], [ghi_chu], [ten_lau], [trang_thai]) VALUES (6, 5, 5, N'nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in', N'ligula sit amet eleifend pede libero quis orci nullam molestie nibh', N'5')
SET IDENTITY_INSERT [dbo].[lau] OFF
GO
SET IDENTITY_INSERT [dbo].[loai_dich_vu] ON 

INSERT [dbo].[loai_dich_vu] ([id], [mo_ta], [ten_loai_dich_vu], [trang_thai]) VALUES (1, N'vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis', N'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien', N'1')
INSERT [dbo].[loai_dich_vu] ([id], [mo_ta], [ten_loai_dich_vu], [trang_thai]) VALUES (2, N'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci', N'pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam', N'2')
INSERT [dbo].[loai_dich_vu] ([id], [mo_ta], [ten_loai_dich_vu], [trang_thai]) VALUES (3, N'est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', N'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas', N'3')
INSERT [dbo].[loai_dich_vu] ([id], [mo_ta], [ten_loai_dich_vu], [trang_thai]) VALUES (4, N'eleifend pede libero quis orci nullam molestie nibh in lectus', N'vel nisl duis ac nibh fusce lacus purus aliquet at feugiat', N'4')
INSERT [dbo].[loai_dich_vu] ([id], [mo_ta], [ten_loai_dich_vu], [trang_thai]) VALUES (5, N'ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla', N'semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci', N'5')
SET IDENTITY_INSERT [dbo].[loai_dich_vu] OFF
GO
SET IDENTITY_INSERT [dbo].[loai_phong] ON 

INSERT [dbo].[loai_phong] ([don_gia_qua_dem], [don_gia_theo_gio], [ho_ten_nguoi_dai_dien], [id], [tien_qua_gio], [ghi_chu], [so_nguoi], [ten_loai_phong], [trang_thai]) VALUES (CAST(1.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), N'1.00', 7, CAST(1.00 AS Numeric(38, 2)), N'1', N'1', N'1', N'1')
INSERT [dbo].[loai_phong] ([don_gia_qua_dem], [don_gia_theo_gio], [ho_ten_nguoi_dai_dien], [id], [tien_qua_gio], [ghi_chu], [so_nguoi], [ten_loai_phong], [trang_thai]) VALUES (CAST(88.00 AS Numeric(38, 2)), CAST(91.00 AS Numeric(38, 2)), N'faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna', 8, CAST(96.00 AS Numeric(38, 2)), N'in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt', N'1', N'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus', N'1')
INSERT [dbo].[loai_phong] ([don_gia_qua_dem], [don_gia_theo_gio], [ho_ten_nguoi_dai_dien], [id], [tien_qua_gio], [ghi_chu], [so_nguoi], [ten_loai_phong], [trang_thai]) VALUES (CAST(7.00 AS Numeric(38, 2)), CAST(89.00 AS Numeric(38, 2)), N'ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit', 9, CAST(42.00 AS Numeric(38, 2)), N'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et', N'2', N'duis bibendum felis sed interdum venenatis turpis enim blandit mi in', N'2')
INSERT [dbo].[loai_phong] ([don_gia_qua_dem], [don_gia_theo_gio], [ho_ten_nguoi_dai_dien], [id], [tien_qua_gio], [ghi_chu], [so_nguoi], [ten_loai_phong], [trang_thai]) VALUES (CAST(22.00 AS Numeric(38, 2)), CAST(32.00 AS Numeric(38, 2)), N'purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor', 10, CAST(70.00 AS Numeric(38, 2)), N'tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea', N'3', N'ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam', N'3')
INSERT [dbo].[loai_phong] ([don_gia_qua_dem], [don_gia_theo_gio], [ho_ten_nguoi_dai_dien], [id], [tien_qua_gio], [ghi_chu], [so_nguoi], [ten_loai_phong], [trang_thai]) VALUES (CAST(61.00 AS Numeric(38, 2)), CAST(84.00 AS Numeric(38, 2)), N'at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae', 11, CAST(5.00 AS Numeric(38, 2)), N'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel', N'4', N'et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum', N'4')
INSERT [dbo].[loai_phong] ([don_gia_qua_dem], [don_gia_theo_gio], [ho_ten_nguoi_dai_dien], [id], [tien_qua_gio], [ghi_chu], [so_nguoi], [ten_loai_phong], [trang_thai]) VALUES (CAST(90.00 AS Numeric(38, 2)), CAST(12.00 AS Numeric(38, 2)), N'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed', 12, CAST(88.00 AS Numeric(38, 2)), N'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu', N'5', N'sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin', N'5')
SET IDENTITY_INSERT [dbo].[loai_phong] OFF
GO
SET IDENTITY_INSERT [dbo].[loai_phong_ban] ON 

INSERT [dbo].[loai_phong_ban] ([id], [so_luong_phong_ban], [ghi_chu], [ma_loai_phong_ban], [ten_loai_phong_ban], [trang_thai]) VALUES (1, 1, N'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse', N'leo maecenas pulvinar lobortis est phasellus sit amet erat nulla', N'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', N'1')
INSERT [dbo].[loai_phong_ban] ([id], [so_luong_phong_ban], [ghi_chu], [ma_loai_phong_ban], [ten_loai_phong_ban], [trang_thai]) VALUES (2, 2, N'ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum', N'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id', N'tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non', N'2')
INSERT [dbo].[loai_phong_ban] ([id], [so_luong_phong_ban], [ghi_chu], [ma_loai_phong_ban], [ten_loai_phong_ban], [trang_thai]) VALUES (3, 3, N'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus', N'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi', N'pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit', N'3')
INSERT [dbo].[loai_phong_ban] ([id], [so_luong_phong_ban], [ghi_chu], [ma_loai_phong_ban], [ten_loai_phong_ban], [trang_thai]) VALUES (4, 4, N'odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius', N'massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt', N'lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea', N'4')
INSERT [dbo].[loai_phong_ban] ([id], [so_luong_phong_ban], [ghi_chu], [ma_loai_phong_ban], [ten_loai_phong_ban], [trang_thai]) VALUES (5, 5, N'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', N'non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et', N'ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis', N'5')
SET IDENTITY_INSERT [dbo].[loai_phong_ban] OFF
GO
SET IDENTITY_INSERT [dbo].[phong] ON 

INSERT [dbo].[phong] ([id], [id_co_so], [id_lau], [id_loai_phong], [ghi_chu], [so_luong_phong], [ten_phong], [trang_thai]) VALUES (6, 1, 2, 7, N'60', N'1', N'vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum', N'1')
INSERT [dbo].[phong] ([id], [id_co_so], [id_lau], [id_loai_phong], [ghi_chu], [so_luong_phong], [ten_phong], [trang_thai]) VALUES (7, 2, 3, 8, N'76', N'2', N'non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', N'2')
INSERT [dbo].[phong] ([id], [id_co_so], [id_lau], [id_loai_phong], [ghi_chu], [so_luong_phong], [ten_phong], [trang_thai]) VALUES (8, 3, 4, 9, N'80', N'3', N'potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit', N'3')
INSERT [dbo].[phong] ([id], [id_co_so], [id_lau], [id_loai_phong], [ghi_chu], [so_luong_phong], [ten_phong], [trang_thai]) VALUES (9, 4, 5, 10, N'5', N'4', N'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst', N'4')
INSERT [dbo].[phong] ([id], [id_co_so], [id_lau], [id_loai_phong], [ghi_chu], [so_luong_phong], [ten_phong], [trang_thai]) VALUES (10, 5, 6, 11, N'84', N'5', N'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a', N'5')
SET IDENTITY_INSERT [dbo].[phong] OFF
GO
SET IDENTITY_INSERT [dbo].[phong_ban] ON 

INSERT [dbo].[phong_ban] ([id], [id_loai_phong_ban], [so_luong_nhan_vien], [so_luong_phong_ban], [ghi_chu], [ten_phong_ban], [trang_thai]) VALUES (1, 1, 1, 1, N'vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id', N'vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in', N'1')
INSERT [dbo].[phong_ban] ([id], [id_loai_phong_ban], [so_luong_nhan_vien], [so_luong_phong_ban], [ghi_chu], [ten_phong_ban], [trang_thai]) VALUES (2, 2, 2, 2, N'suspendisse ornare consequat lectus in est risus auctor sed tristique in', N'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula', N'2')
INSERT [dbo].[phong_ban] ([id], [id_loai_phong_ban], [so_luong_nhan_vien], [so_luong_phong_ban], [ghi_chu], [ten_phong_ban], [trang_thai]) VALUES (3, 3, 3, 3, N'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', N'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor', N'3')
INSERT [dbo].[phong_ban] ([id], [id_loai_phong_ban], [so_luong_nhan_vien], [so_luong_phong_ban], [ghi_chu], [ten_phong_ban], [trang_thai]) VALUES (4, 4, 4, 4, N'risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie', N'turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis', N'4')
INSERT [dbo].[phong_ban] ([id], [id_loai_phong_ban], [so_luong_nhan_vien], [so_luong_phong_ban], [ghi_chu], [ten_phong_ban], [trang_thai]) VALUES (5, 5, 5, 5, N'egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis', N'erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', N'5')
SET IDENTITY_INSERT [dbo].[phong_ban] OFF
GO
SET IDENTITY_INSERT [dbo].[quyen_han] ON 

INSERT [dbo].[quyen_han] ([id], [mo_ta], [ten_quyen_han], [trang_thai]) VALUES (1, N'nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus', N'A', N'1')
INSERT [dbo].[quyen_han] ([id], [mo_ta], [ten_quyen_han], [trang_thai]) VALUES (2, N'sem duis aliquam convallis nunc proin at turpis a pede posuere', N'B', N'2')
INSERT [dbo].[quyen_han] ([id], [mo_ta], [ten_quyen_han], [trang_thai]) VALUES (3, N'pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien', N'C', N'2')
INSERT [dbo].[quyen_han] ([id], [mo_ta], [ten_quyen_han], [trang_thai]) VALUES (4, N'penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', N'D', N'3')
INSERT [dbo].[quyen_han] ([id], [mo_ta], [ten_quyen_han], [trang_thai]) VALUES (5, N'nulla quisque arcu libero rutrum ac lobortis vel dapibus at', N'E', N'1')
SET IDENTITY_INSERT [dbo].[quyen_han] OFF
GO
SET IDENTITY_INSERT [dbo].[tai_khoan] ON 

INSERT [dbo].[tai_khoan] ([gioi_tinh], [id], [id_chuc_vu], [id_co_so], [id_phong_ban], [anh_dai_dien], [cccd], [dia_chi], [email], [ho_ten_chutk], [mat_khau], [ngay_ket_thuc_hop_dong], [ngay_thang_nam_sinh], [ngay_vao_lam], [so_dien_thoai], [ten_tai_khoan], [trang_thai]) VALUES (1, 11, 6, 1, 1, N'porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor', N'sit amet justo morbi ut odio cras mi pede malesuada', N'augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec', N'velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros', N'id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede', N'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt', N'2024-02-18', N'2024-01-10', N'2023-05-27', N'nullam varius nulla facilisi cras non velit nec nisi vulputate', N'sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis', N'1')
INSERT [dbo].[tai_khoan] ([gioi_tinh], [id], [id_chuc_vu], [id_co_so], [id_phong_ban], [anh_dai_dien], [cccd], [dia_chi], [email], [ho_ten_chutk], [mat_khau], [ngay_ket_thuc_hop_dong], [ngay_thang_nam_sinh], [ngay_vao_lam], [so_dien_thoai], [ten_tai_khoan], [trang_thai]) VALUES (2, 12, 7, 2, 2, N'etiam faucibus cursus urna ut tellus nulla ut erat id mauris', N'non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse', N'integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id', N'morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh', N'aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit', N'dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus', N'2023-09-11', N'2024-01-15', N'2024-01-15', N'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla', N'nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et', N'2')
INSERT [dbo].[tai_khoan] ([gioi_tinh], [id], [id_chuc_vu], [id_co_so], [id_phong_ban], [anh_dai_dien], [cccd], [dia_chi], [email], [ho_ten_chutk], [mat_khau], [ngay_ket_thuc_hop_dong], [ngay_thang_nam_sinh], [ngay_vao_lam], [so_dien_thoai], [ten_tai_khoan], [trang_thai]) VALUES (3, 13, 8, 3, 3, N'vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', N'viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae', N'vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat', N'cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris', N'libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis', N'ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus', N'2023-06-29', N'2023-10-03', N'2023-09-25', N'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet', N'ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est', N'3')
INSERT [dbo].[tai_khoan] ([gioi_tinh], [id], [id_chuc_vu], [id_co_so], [id_phong_ban], [anh_dai_dien], [cccd], [dia_chi], [email], [ho_ten_chutk], [mat_khau], [ngay_ket_thuc_hop_dong], [ngay_thang_nam_sinh], [ngay_vao_lam], [so_dien_thoai], [ten_tai_khoan], [trang_thai]) VALUES (4, 14, 9, 4, 4, N'vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat', N'potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis', N'lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat', N'sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan', N'amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis', N'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non', N'2024-01-23', N'2024-03-21', N'2024-04-29', N'congue diam id ornare imperdiet sapien urna pretium nisl ut', N'suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit', N'4')
INSERT [dbo].[tai_khoan] ([gioi_tinh], [id], [id_chuc_vu], [id_co_so], [id_phong_ban], [anh_dai_dien], [cccd], [dia_chi], [email], [ho_ten_chutk], [mat_khau], [ngay_ket_thuc_hop_dong], [ngay_thang_nam_sinh], [ngay_vao_lam], [so_dien_thoai], [ten_tai_khoan], [trang_thai]) VALUES (5, 15, 10, 5, 5, N'proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula', N'semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id', N'sodales sed tincidunt eu felis fusce posuere felis sed lacus', N'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum', N'pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci', N'amet eleifend pede libero quis orci nullam molestie nibh in', N'2024-01-20', N'2023-10-31', N'2023-07-28', N'tristique fusce congue diam id ornare imperdiet sapien urna pretium', N'faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non', N'5')
SET IDENTITY_INSERT [dbo].[tai_khoan] OFF
GO
SET IDENTITY_INSERT [dbo].[tai_khoan_ngan_hang] ON 

INSERT [dbo].[tai_khoan_ngan_hang] ([id], [dia_chicn], [ghi_chu], [ho_ten_chutknh], [so_tai_khoan], [ten_chi_nhanh], [ten_ngan_hang], [trang_thai]) VALUES (1, N'in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis', N'fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend', N'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo', N'justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus', N'pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla', N'quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec', N'1')
INSERT [dbo].[tai_khoan_ngan_hang] ([id], [dia_chicn], [ghi_chu], [ho_ten_chutknh], [so_tai_khoan], [ten_chi_nhanh], [ten_ngan_hang], [trang_thai]) VALUES (2, N'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at', N'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper', N'interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', N'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', N'morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt', N'vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in', N'2')
INSERT [dbo].[tai_khoan_ngan_hang] ([id], [dia_chicn], [ghi_chu], [ho_ten_chutknh], [so_tai_khoan], [ten_chi_nhanh], [ten_ngan_hang], [trang_thai]) VALUES (3, N'suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in', N'habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla', N'felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui', N'commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing', N'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula', N'donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a', N'3')
INSERT [dbo].[tai_khoan_ngan_hang] ([id], [dia_chicn], [ghi_chu], [ho_ten_chutknh], [so_tai_khoan], [ten_chi_nhanh], [ten_ngan_hang], [trang_thai]) VALUES (4, N'ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit', N'nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie', N'molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac', N'in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus', N'proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum', N'quisque erat eros viverra eget congue eget semper rutrum nulla', N'4')
INSERT [dbo].[tai_khoan_ngan_hang] ([id], [dia_chicn], [ghi_chu], [ho_ten_chutknh], [so_tai_khoan], [ten_chi_nhanh], [ten_ngan_hang], [trang_thai]) VALUES (5, N'neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales', N'vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam', N'eu magna vulputate luctus cum sociis natoque penatibus et magnis', N'orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin', N'potenti nullam porttitor lacus at turpis donec posuere metus vitae', N'justo eu massa donec dapibus duis at velit eu est congue elementum in', N'5')
SET IDENTITY_INSERT [dbo].[tai_khoan_ngan_hang] OFF
GO
SET IDENTITY_INSERT [dbo].[tai_khoan_quyen_han] ON 

INSERT [dbo].[tai_khoan_quyen_han] ([id], [id_quyen_han], [id_tai_khoan], [ma_su_dung], [mo_ta], [trang_thai]) VALUES (6, 1, 11, N'libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis', N'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non', N'1')
INSERT [dbo].[tai_khoan_quyen_han] ([id], [id_quyen_han], [id_tai_khoan], [ma_su_dung], [mo_ta], [trang_thai]) VALUES (7, 2, 12, N'et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', N'praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut', N'2')
INSERT [dbo].[tai_khoan_quyen_han] ([id], [id_quyen_han], [id_tai_khoan], [ma_su_dung], [mo_ta], [trang_thai]) VALUES (8, 3, 13, N'elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum', N'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante', N'3')
INSERT [dbo].[tai_khoan_quyen_han] ([id], [id_quyen_han], [id_tai_khoan], [ma_su_dung], [mo_ta], [trang_thai]) VALUES (9, 4, 14, N'tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis', N'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet', N'4')
INSERT [dbo].[tai_khoan_quyen_han] ([id], [id_quyen_han], [id_tai_khoan], [ma_su_dung], [mo_ta], [trang_thai]) VALUES (10, 5, 15, N'nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas', N'tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra', N'5')
SET IDENTITY_INSERT [dbo].[tai_khoan_quyen_han] OFF



select * from dich_vu
