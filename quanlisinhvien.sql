CREATE DATABASE QuanLiSinhVien;

CREATE TABLE Class(
Stt int not null auto_increment primary key,
ClassName varchar(60) not null,
StartDate datetime    not null,
`Status` bit
);

CREATE TABLE Student(
StudentID int not null auto_increment primary key,
StudentName varchar(30) not null,
Address varchar(50),
Phone   varchar(20),
`Status`   bit,
ClassID   int not null
);

CREATE TABLE Subject(
SubID int not null auto_increment primary key,
SubName  varchar(30) not null,
Credit    tinyint not null Default 1,
check (Credit >= 1),
`status` bit default 1
);
CREATE TABLE Mark(
MarkID int not null auto_increment primary key ,
SubID int not null ,
StudentID  int not null unique key,
Mark float  default 0 
check( Mark between 0 and 100),
ExamTimes tinyint default 1,
UNIQUE (SubId, StudentID),
FOREIGN KEY (SubID) REFERENCES Subject(SubID),
FOREIGN KEY (StudentID) REFERENCES Student(StudentID)

);