-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

/*
    Where STATEMENT 
    =, <>, <, >, And, Or, Like, Null, Not Null, In 
*/

SELECT *
FROM EmployeeDemographic
WHERE Nama_Depan = 'Lala'   -- Cari Kolom yang sesuai `ID`

SELECT *
FROM EmployeeDemographic
WHERE Nama_Depan <> 'Lala'  -- Semua baris di print, tapi yang ada 'Lala' tidak di print

SELECT *
FROM EmployeeDemographic
WHERE umur >= 50          -- Print semua yang 'umur' lebih dari 50

SELECT *
FROM EmployeeDemographic
WHERE umur < 50 AND Gender = 'perempuan'

SELECT *
FROM EmployeeDemographic
WHERE umur < 50 OR Gender = 'perempuan'  -- Print umur < 50 atau yang bergender perempuan

SELECT *
FROM EmployeeDemographic
WHERE Nama_Depan LIKE '%i'   -- Print yang huruf terakhir nama depannya adalah i

SELECT *
FROM EmployeeDemographic
WHERE Nama_Depan LIKE '%s%i'  -- Print yang huruf depan nya s dan huruf terakhir dari nama depannya adalah i

SELECT *
FROM EmployeeDemographic
WHERE ID IS NULL       -- Print yang IDnya null

SELECT *
FROM EmployeeDemographic
WHERE ID IS NOT NULL       -- Print yang IDnya null

SELECT *
FROM EmployeeSalary
where Jabatan IN ('Karyawan', 'HRD') -- Prinsipnya sama kayak '=' hanya ini bisa lebih banyak syaratnya
