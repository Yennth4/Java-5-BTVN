CREATE DATABASE BTVN_B8;
USE BTVN_B8;

CREATE TABLE lop_hoc (
	id BIGINT IDENTITY NOT NULL,
	name varchar(100) NULL,
	CONSTRAINT lop_hoc_PK PRIMARY KEY (id)
)

CREATE TABLE sinh_vien (
	id BIGINT IDENTITY NOT NULL,
	lop_hoc_id BIGINT NULL,
	name varchar(100) NULL,
	mssv varchar(100) NULL,
	dia_chi varchar(100) NULL,
	CONSTRAINT phong_hoc_PK PRIMARY KEY (id),
	CONSTRAINT sinh_vien_FK FOREIGN KEY (lop_hoc_id) REFERENCES lop_hoc(id)
)

-- Insert records into lop_hoc table
INSERT INTO lop_hoc (name) VALUES ('Math');
INSERT INTO lop_hoc (name) VALUES ('Physics');
INSERT INTO lop_hoc (name) VALUES ('Chemistry');
INSERT INTO lop_hoc (name) VALUES ('Biology');
INSERT INTO lop_hoc (name) VALUES ('Computer Science');

-- Insert records into sinh_vien table
INSERT INTO sinh_vien (lop_hoc_id, name, mssv, dia_chi) VALUES (1, 'Nguyen Van A', 'MSSV001', '123 Street A');
INSERT INTO sinh_vien (lop_hoc_id, name, mssv, dia_chi) VALUES (2, 'Tran Thi B', 'MSSV002', '456 Street B');
INSERT INTO sinh_vien (lop_hoc_id, name, mssv, dia_chi) VALUES (3, 'Le Van C', 'MSSV003', '789 Street C');
INSERT INTO sinh_vien (lop_hoc_id, name, mssv, dia_chi) VALUES (4, 'Pham Thi D', 'MSSV004', '101 Street D');
INSERT INTO sinh_vien (lop_hoc_id, name, mssv, dia_chi) VALUES (5, 'Hoang Van E', 'MSSV005', '102 Street E');
 
select * from lop_hoc
select * from sinh_vien
