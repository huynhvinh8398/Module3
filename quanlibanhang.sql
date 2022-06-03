CREATE DATABASE QuanLiBanHang;

CREATE TABLE customers(
cID int not null primary key,
cName varchar(50) not null ,
cAge int 
);
CREATE TABLE orders(
oID int not null primary key,
cID int not null,
oDate datetime,
oTotalPrice double,
FOREIGN KEY (cID) REFERENCES customers (CID)
);
CREATE TABLE products(
pID int not null primary key,
pName varchar(50),
pPrice double
);
CREATE TABLE orderDetails(
oID int not null, 
pID int not null,
odQTY int not null,
FOREIGN KEY (oID) REFERENCES orders(oID),
FOREIGN KEY (pID) REFERENCES products(pID)
);