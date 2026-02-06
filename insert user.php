<?php
include 'connect.php';

$a = $_POST["name"]  ?? "";
$b = $_POST["email"] ?? "";
$c = $_POST["pass"]   ?? "";

if ($a === "" || $b === "" || $c === "") {
    echo "All fields are required.";
    exit;
}

$stmt = $con->prepare(
    "INSERT INTO users (name, email, pass) VALUES (?, ?, ?)"
);
$stmt->bind_param("sss", $a, $b, $c);

if ($stmt->execute()) {
    echo "Inserted Successfully.";
} else {
    echo "Error inserting record.";
}

$stmt->close();
$con->close();
?>