-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

-- Temp table dapat digunakan untuk menganalisis beberapa element pada tabel origin
-- tanpa memodifikasi table origin nya

CREATE TEMPORARY TABLE temp_employee
(id int,
jabatan VARCHAR (100),
gaji int
)

SELECT *
FROM temp_employee

INSERT INTO temp_employee VALUES (
    134001, 'HRD', 17000
)

INSERT INTO temp_employee
SELECT *
FROM EmployeeSalary

CREATE TEMPORARY TABLE temp_employee2
(
    jabatan VARCHAR (50),
    umur int,
    avg_gaji int,
    avg_umur int 
)

INSERT INTO temp_employee2
SELECT kuy.Jabatan, main.umur, 
AVG (kuy.Bayaran) OVER (PARTITION BY kuy.Bayaran), 
AVG (main.umur) OVER (PARTITION BY main.umur)
    FROM EmployeeDemographic as main
    INNER join EmployeeSalary as kuy
        on main.ID = kuy.ID
    ORDER BY umur ASC

SELECT *
FROM temp_employee2

DROP TABLE if EXISTS temp_employee2  -- Buat menghapus table temp_employee2