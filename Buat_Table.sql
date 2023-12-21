-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

CREATE Table EmployeeDemographic 
(ID int, 
Nama_Depan VARCHAR (50), 
Nama_Belakang VARCHAR (50),
umur int, 
Gender VARCHAR (50)
)

CREATE TABLE EmployeeSalary (
   ID int,
    Jabatan VARCHAR (50),
    Bayaran int
)

INSERT INTO EmployeeDemographic VALUES 
(13440, 'Ahmad', 'Jauri', 60, 'laki-laki'),
(13441, 'Agus', 'Hon', 45, 'laki-laki'),
(13442, 'Lala', 'J', 30, 'perempuan'),
(13443, 'Joni', 'Suleman', 25, 'laki-laki'),
(13444, 'Feni', 'Gelis', 55, 'perempuan'),
(13445, 'Hanzo', 'Joni', 57, 'laki-laki'),
(13446, 'Stefani', 'Tong', 32, 'perempuan')

INSERT INTO EmployeeSalary VALUES 
(13440, 'HRD', 10000),
(13441, 'HRD', 15000),
(13442, 'Karyawan', 4000),
(13443, 'Karyawan', 4000),
(13444, 'Direktur', 12000),
(13445, 'Direktur', 20000),
(13446, 'Manager', 18000)

