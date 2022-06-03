
create database QuanLiDiemThi;

create table HocSinh(
MaHS varchar(50) primary key,
TenHS varchar(100),
NgaySinh datetime,
Lop     varchar(20),
GT       varchar(20)
);
create table MonHoc(
MaMH varchar(50) primary key,
TenMH varchar(50)
);
create table BangDiem(
MaHS   varchar(20) ,
MaMH   varchar(50),
DiemThi    int,
NgayKT  datetime,
primary key (MaHS, MaMH),
foreign key (MaHS) references Hocsinh(MaHS),
foreign key (MaMH) references MonHoc(MaMH)

);
create table GiaoVien(
MaGV varchar(20) primary key,
TenGV varchar(50),
SDT varchar(20)
);
alter table MonHoc add MaGV varchar(20);
alter table MonHoc add constraint FK_MaGV foreign key (MaGV) references GiaoVien(MaGV);
