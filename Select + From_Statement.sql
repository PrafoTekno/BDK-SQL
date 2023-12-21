-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

-- SELECT STATEMENT : *, Top, Distinct, Count, As, Max, Min, Avg

SELECT * -- * artinya ambil semua komponennya
FROM EmployeeDemographic 

SELECT ID 
FROM EmployeeDemographic

SELECT ID, Bayaran
FROM EmployeeSalary

SELECT DISTINCT (Gender)   -- Untuk menampilkan berapa jenis kolom ini
FROM EmployeeDemographic

SELECT COUNT (Jabatan) AS Jumlah_Jabatan -- Count untuk menghitung jumlah komponen pada kolom ini 
FROM EmployeeSalary                      -- AS untuk memberi nama pada kolom

SELECT MAX (Bayaran) AS Gaji_tertinggi
FROM EmployeeSalary

SELECT MIN (Bayaran) AS Gaji_terendah
FROM EmployeeSalary

SELECT AVG (Bayaran) AS Rata_Gaji
FROM EmployeeSalary

SELECT karakter
FROM oracle.main    -- Select dari database berbeda