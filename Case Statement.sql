-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

SELECT EmployeeDemographic.ID, Nama_Depan, umur, Jabatan, Bayaran,
CASE 
    WHEN umur > 55 THEN  'Sepuh'
    WHEN umur BETWEEN 40 AND 55 THEN 'Tua'
    ELSE  'Muda'
END AS Status_Umur,
CASE 
    WHEN Jabatan = 'HRD' THEN Bayaran + (Bayaran*0.05)
    WHEN Jabatan = 'Karyawan' THEN Bayaran + (Bayaran*0.1)
    WHEN Jabatan = 'Direktur' THEN Bayaran + (Bayaran*0.07)  
    ELSE Bayaran + (Bayaran*0.07)
END AS Kenaikan_Gaji
FROM EmployeeDemographic
INNER JOIN EmployeeSalary ON EmployeeDemographic.ID = EmployeeSalary.ID
