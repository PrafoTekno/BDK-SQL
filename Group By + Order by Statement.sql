-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

SELECT Jabatan, COUNT (Jabatan) AS Sum_Jabatan
FROM EmployeeSalary
WHERE Bayaran > 4000
GROUP BY Jabatan -- buat jadi patokan pembuatan tabel
ORDER BY Sum_Jabatan DESC   -- order to untuk mengurutkan

-- DESC urutan dari jumlah yang paling banyak
-- ASC urutan dari jumlah yang paling sedikit

SELECT *
FROM EmployeeDemographic 
ORDER BY umur ASC, Gender DESC  -- Urutan mengikuti yang syarat pertama dalam hal ini adalah umur secara ASC 
