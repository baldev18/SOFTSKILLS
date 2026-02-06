<?php
include 'connect.php';

$id     = $_POST['id']     ?? '';
$name  = $_POST['name']  ?? '';
$price = $_POST['email'] ?? '';
$des   = $_POST['pass']   ?? '';

if (empty($id) || empty($name) || empty($email) || empty($pass)) {
    echo "All fields are required.";
    exit;
}

$sql = "UPDATE users
        SET name='$name', email='$email', pass='$pass' 
        WHERE id='$id'";

mysqli_query($con, $sql);
mysqli_close($con);

echo "Record updated successfully";
?>