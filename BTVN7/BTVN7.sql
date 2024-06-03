CREATE DATABASE B8;
GO
USE B8;
GO

CREATE TABLE category (
    id BIGINT IDENTITY NOT NULL,
    category_code varchar(100) NULL,
    category_name Nvarchar(100) NULL,
    CONSTRAINT category_PK PRIMARY KEY (id)
)

CREATE TABLE product (
    id BIGINT IDENTITY NOT NULL,
    category_id BIGINT NULL,
    product_code varchar(100) NULL,
    product_name Nvarchar(100) NULL,
    price FLOAT NULL,
    description Nvarchar(100) NULL,
    CONSTRAINT product_PK PRIMARY KEY (id),
    CONSTRAINT product_FK FOREIGN KEY (category_id) REFERENCES category(id)
)

INSERT INTO category
( category_code, category_name)
VALUES( N'C01', N'Hang1');
INSERT INTO category
(category_code, category_name)
VALUES( N'C02', N'Hang 2');
INSERT INTO category
(category_code, category_name)
VALUES( N'C03', N'Hang 3');

SET IDENTITY_INSERT product ON

INSERT INTO product
(id, category_id, product_code, product_name, price, description)
VALUES(1, 1, N'P01', N'san pham 1', 10.0, N'aaaa');
INSERT INTO product
(id, category_id, product_code, product_name, price, description)
VALUES(2, 1, N'P02', N'san pharm 2', 11.0, N'bbs');
INSERT INTO product
(id, category_id, product_code, product_name, price, description)
VALUES(3, 2, N'P03', N'san pham 3', 13.0, N'ababab');


SELECT * FROM product
SELECT * FROM category