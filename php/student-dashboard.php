<?php
session_start();
if ($_SESSION['role'] !== 'student') {
    header("Location: login.php");
    exit;
}

echo "Welcome to the Student Dashboard!";
?>
