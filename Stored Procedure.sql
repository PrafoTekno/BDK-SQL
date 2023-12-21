-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

DELIMITER $
-- DELIMITER buat ngasih tanda berakhirnya code 

CREATE PROCEDURE MAIN (IN nama VARCHAR (50),
 IN nama2 VARCHAR (50))
BEGIN
    INSERT INTO Mahasiswa
    VALUES ('1005', nama, nama2);
END$

CREATE Procedure MAIN_Update (IN id_par int, 
 IN fname VARCHAR (50))
BEGIN
    UPDATE Mahasiswa
    SET nama_depan = fname
    WHERE id = id_par;
END$

CREATE Procedure MAIN_Delete (IN fname VARCHAR (50))
BEGIN
    DELETE FROM Mahasiswa
    WHERE nama_depan = fname;
END$

DELIMITER ;
-- Balikin ke deafult 

CALL MAIN ('tatang', 'suratang')

CALL MAIN_Update (1002, 'Budi')

CALL MAIN_Delete ('Agus')

SELECT *
FROM Mahasiswa

DROP Procedure MAIN_Update