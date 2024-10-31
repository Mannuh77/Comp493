<?php
$db_username = 'root';
$db_password = '';
$db_name = 'users_register'; // Make sure this matches your actual database name
$db_host = 'localhost';

$mysqli = new mysqli($db_host, $db_username, $db_password, $db_name);

if ($mysqli->connect_error) {
    die("Database connection failed: " . $mysqli->connect_error);
}
?>
