<?php
session_start();
if ($_SESSION['role'] !== 'counselor') {
    header("Location: login.php");
    exit;
}

echo "Welcome to the Counselor Dashboard!";
?>
