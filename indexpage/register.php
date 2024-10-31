<?php
include 'db.php';

// Get form inputs safely
$firstname = isset($_POST["firstname"]) ? $_POST["firstname"] : '';
$lastname = isset($_POST["lastname"]) ? $_POST["lastname"] : '';
$email = isset($_POST["email"]) ? $_POST["email"] : '';
$idnumber = isset($_POST["idnumber"]) ? (int)$_POST["idnumber"] : 0;
$constituencyNumber = isset($_POST["constituencyNumber"]) ? (int)$_POST["constituencyNumber"] : 0;
$password = isset($_POST["password"]) ? $_POST["password"] : '';

if (!$firstname || !$lastname || !$email || !$idnumber || !$constituencyNumber || !$password) {
    echo json_encode(array("success" => false, "message" => "All fields are required"));
    exit;
}

$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

// Check if the user already exists
$stmt = $mysqli->prepare("SELECT COUNT(*) FROM users WHERE email = ? OR idnumber = ?");
$stmt->bind_param("si", $email, $idnumber);
$stmt->execute();
$stmt->bind_result($userCount);
$stmt->fetch();
$stmt->close();

if ($userCount > 0) {
    echo json_encode(array("success" => false, "message" => "User already exists"));
} else {
    // Insert the new user into the database
    $query = "INSERT INTO users (firstname, lastname, email, idnumber, constituencyNumber, password) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $mysqli->prepare($query);
    $stmt->bind_param("ssssis", $firstname, $lastname, $email, $idnumber, $constituencyNumber, $hashedPassword);

    if ($stmt->execute()) {
        echo json_encode(array("success" => true, "message" => "User Registered Successfully"));
    } else {
        echo json_encode(array("success" => false, "error" => $stmt->error));
    }
    $stmt->close();
}

$mysqli->close();
?>
