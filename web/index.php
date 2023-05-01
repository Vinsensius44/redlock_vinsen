<?php

$servername = "isi_data";
$username = "root";
$password = "vinsen123";
$dbname = "Redlock";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Koneksi ke database gagal: " . $conn->connect_error);}
$sql = "SELECT ID, Nama, Alamat, Jabatan FROM users";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "ID: " . $row["ID"]. " - Nama: " . $row["Nama"]. " - Alamat: " . $row["Alamat"]. " - Jabatan: " . $row["Jabatan"]. "<br>";}
        echo "Jumlah Pejabat : $result->num_rows";
} else {
    echo "0 results";}
$conn->close();
?>
