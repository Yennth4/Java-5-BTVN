CREATE DATABASE sof3021_jpa_ve_nha;
USE sof3021_jpa_ve_nha;

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