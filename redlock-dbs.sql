
CREATE DATABASE Redlock;

USE Redlock

CREATE TABLE users (
    ID INT PRIMARY KEY,
    Nama VARCHAR(255),
    Alamat VARCHAR(255),
    Jabatan VARCHAR(255));

INSERT INTO users VALUES
(1, 'Vinsensius', 'cempaka putih', 'HRD'),
(2, 'sappo', 'kuningan', 'STAFF'),
(3, 'andika', 'kuningan', 'MANEGER'),
(4, 'boy', 'kemayoran ', 'CUSTUMER SERVICE');