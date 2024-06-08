CREATE DATABASE B10
GO
USE B10
GO
CREATE TABLE [dbo].[loai_phong_ban](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](30) NULL,
	[so_luong] [int] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
)

CREATE TABLE [dbo].[phong_ban](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[loai_phong_ban_id] [int] FOREIGN KEY REFERENCES [dbo].[loai_phong_ban]([id]),
	[ma] [varchar](20) NOT NULL,
	[ten] [nvarchar](30) NULL,
	[so_luong_phong_ban] [int] NULL,
	[so_luong_nhan_vien] [int] NULL,
	[ghi_chu] [nvarchar](50) NULL,
	[trang_thai] [int] NULL,
)

INSERT INTO [dbo].[loai_phong_ban] ([ma], [ten], [so_luong], [ghi_chu], [trang_thai])
VALUES 
('LPB001', N'Loại Phòng Ban 1', 10, N'Ghi chú 1', 1),
('LPB002', N'Loại Phòng Ban 2', 20, N'Ghi chú 2', 1),
('LPB003', N'Loại Phòng Ban 3', 30, N'Ghi chú 3', 1),
('LPB004', N'Loại Phòng Ban 4', 40, N'Ghi chú 4', 1),
('LPB005', N'Loại Phòng Ban 5', 50, N'Ghi chú 5', 1);
GO

INSERT INTO [dbo].[phong_ban] ([loai_phong_ban_id], [ma], [ten], [so_luong_phong_ban], [so_luong_nhan_vien], [ghi_chu], [trang_thai])
VALUES
(1, 'PB001', N'Phòng Ban 1', 5, 100, N'Ghi chú PB 1', 1),
(2, 'PB002', N'Phòng Ban 2', 10, 200, N'Ghi chú PB 2', 1),
(3, 'PB003', N'Phòng Ban 3', 15, 300, N'Ghi chú PB 3', 1),
(4, 'PB004', N'Phòng Ban 4', 20, 400, N'Ghi chú PB 4', 1),
(5, 'PB005', N'Phòng Ban 5', 25, 500, N'Ghi chú PB 5', 1);
GO

select * from phong_ban