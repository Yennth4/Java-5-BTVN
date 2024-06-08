CREATE DATABASE B12;
GO

USE B12;
GO

-- ChucVu Table
CREATE TABLE ChucVu(
    Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Ma VARCHAR(20) UNIQUE,
    Ten NVARCHAR(50)
);
GO

-- CuaHang Table
CREATE TABLE CuaHang(
    Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Ma VARCHAR(20) UNIQUE,
    Ten NVARCHAR(50),
    DiaChi NVARCHAR(100),
    ThanhPho NVARCHAR(50),
    QuocGia NVARCHAR(50)
);
GO

-- NhanVien Table
CREATE TABLE NhanVien(
    Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Ma VARCHAR(20) UNIQUE,
    Ten NVARCHAR(30),
    TenDem NVARCHAR(30),
    Ho NVARCHAR(30),
    GioiTinh NVARCHAR(10),
    NgaySinh DATE,
    DiaChi NVARCHAR(100),
    Sdt VARCHAR(30),
    MatKhau VARCHAR(MAX),
    IdCH INT,
    IdCV INT,
    IdGuiBC INT,
    TrangThai INT DEFAULT 0
);
GO

-- Insert into ChucVu
INSERT INTO ChucVu (Ma, Ten) VALUES
('CV01', 'Manager'),
('CV02', 'Assistant Manager'),
('CV03', 'Senior Staff'),
('CV04', 'Junior Staff'),
('CV05', 'Intern');
GO

-- Insert into CuaHang
INSERT INTO CuaHang (Ma, Ten, DiaChi, ThanhPho, QuocGia) VALUES
('CH01', 'Store A', '123 Nguyen Trai', 'Hanoi', 'Vietnam'),
('CH02', 'Store B', '456 Le Loi', 'Ho Chi Minh City', 'Vietnam'),
('CH03', 'Store C', '789 Hai Ba Trung', 'Da Nang', 'Vietnam'),
('CH04', 'Store D', '101 Vo Thi Sau', 'Can Tho', 'Vietnam'),
('CH05', 'Store E', '202 Phan Chu Trinh', 'Hue', 'Vietnam');
GO

-- Insert into NhanVien
INSERT INTO NhanVien (Ma, Ten, TenDem, Ho, GioiTinh, NgaySinh, DiaChi, Sdt, MatKhau, IdCH, IdCV, IdGuiBC, TrangThai) VALUES
('NV01', 'Minh', 'Van', 'Nguyen', 'Male', '1985-01-15', '123 Nguyen Trai', '0912345678', 'securepass1', 1, 1, NULL, 1),
('NV02', 'Hoa', 'Thi', 'Tran', 'Female', '1990-02-20', '456 Le Loi', '0923456789', 'securepass2', 2, 2, 1, 1),
('NV03', 'Tuan', 'Anh', 'Le', 'Male', '1988-03-25', '789 Hai Ba Trung', '0934567890', 'securepass3', 3, 3, 2, 1),
('NV04', 'Lan', 'Thi', 'Pham', 'Female', '1992-04-30', '101 Vo Thi Sau', '0945678901', 'securepass4', 4, 4, 3, 1),
('NV05', 'Phong', 'Duc', 'Hoang', 'Male', '1995-05-05', '202 Phan Chu Trinh', '0956789012', 'securepass5', 5, 5, 4, 1);
GO


select * from NhanVien
