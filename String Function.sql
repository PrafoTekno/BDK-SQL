-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

-- String function 
-- Trim, LTRIM, RTRIM, SUBSTRING, Replace, UPPER, LOWER

CREATE TABLE Mahasiswa (
    id VARCHAR (50),
    nama_depan VARCHAR (50),
    nama_belakang VARCHAR (50)
)

INSERT INTO Mahasiswa VALUES
('  1001', 'Agus', 'hebat'),
('1002  ', 'Asep', 'keren'),
('  1003', 'Jaenudin', 'bager'),
('1004  ', 'Udin', 'kasep')

DROP TABLE IF EXISTS Mahasiswa

SELECT *
FROM Mahasiswa

-- TRIM, LTRIM, RTRIM
SELECT id, TRIM (id) AS Hasil_Trim
FROM Mahasiswa

SELECT id, LTRIM (id) AS Hasil_Trim
FROM Mahasiswa

SELECT id, RTRIM (id) AS Hasil_Trim
FROM Mahasiswa 

-- REPLACE

SELECT nama_depan, REPLACE (nama_depan, 'Jaenudin', 'Jean')  as Hasil_Replace
FROM Mahasiswa

-- SUBSTRing
SELECT nama_depan, SUBSTRING (nama_depan, 1, 2) as Hasil_Subs
FROM Mahasiswa

-- UPPER & LOWER
SELECT nama_depan, UPPER (nama_depan)
FROM Mahasiswa

select nama_depan, LOWER (nama_depan)
FROM Mahasiswa