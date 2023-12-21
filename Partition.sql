-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

SELECT Nama_Depan, Nama_Belakang, Jabatan, Bayaran, umur, 
Gender, COUNT (Gender) OVER (PARTITION BY Gender) AS jumlah_gender
FROM EmployeeDemographic AS main
INNER JOIN EmployeeSalary AS yuk
    ON main.ID = yuk.ID

-- Bedanya ama group by adalah dia dapat menyesuaikan dengan jumlah baris yang ada, jadi tidak merubah 
-- Bentuk table yang ada. Berbeda dengan group by

SELECT Gender, COUNT (Gender)
FROM EmployeeDemographic AS main
INNER JOIN EmployeeSalary AS yuk
    ON main.ID = yuk.ID
    GROUP BY Gender
