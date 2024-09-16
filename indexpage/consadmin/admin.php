<?php
session_start();
if (!isset($_SESSION["constituencyNumber"])){
    header('location:consadmin.php');
    exit(); // Add exit after redirect to prevent further execution
}

$db_username = 'root';
$db_password = '';
$db_name = 'users_register';
$db_host = 'localhost';

// Create a connection
$mysqli = new mysqli($db_host, $db_username, $db_password, $db_name);

// Check the connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// Function to update admin password
function updatePassword($mysqli, $newPassword, $adminId) {
    $sql = "UPDATE consadmin SET password = ? WHERE id = ?";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("si", $newPassword, $adminId);
    if ($stmt->execute()) {
        return true;
    } else {
        return false;
    }
}

// Check if the form is submitted for password update
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["new_password"]) && isset($_POST["admin_id"])) {
        $newPassword = $_POST["new_password"];
        $adminId = $_POST["admin_id"];
        if (updatePassword($mysqli, $newPassword, $adminId)) {
            echo "<script>alert('Password updated successfully.');</script>";
        } else {
            echo "<script>alert('Password update failed.');</script>";
        }
    }
}

// SQL query to fetch admin details based on constituencyNumber
$sql = "SELECT * FROM consadmin WHERE constituencyNumber = '" . $_SESSION["constituencyNumber"] . "'";
$result = $mysqli->query($sql);

// Check if any admin details are returned
if ($result->num_rows > 0) {
    // Output heading title
    echo "<h2>Admin Details</h2>";
    // Output data of each admin within a table
    echo "<table border='1'>";
    echo "<tr><th>ID</th><th>Password</th><th>User Type</th><th>Email</th><th>First Name</th><th>Last Name</th><th>Constituency Number</th><th>ID Number</th><th>Action</th></tr>";
    while($row = $result->fetch_assoc()) {
        // Output data as table rows
        echo "<tr>";
        echo "<td>".$row["id"]."</td>";
        echo "<td>".$row["password"]."</td>";
        echo "<td>".$row["usertype"]."</td>";
        echo "<td>".$row["email"]."</td>";
        echo "<td>".$row["firstname"]."</td>";
        echo "<td>".$row["lastname"]."</td>";
        echo "<td>".$row["constituencyNumber"]."</td>";
        echo "<td>".$row["idnumber"]."</td>";
        // Add form for password update
        echo "<td>";
        echo "<form method='post'>";
        echo "<input type='hidden' name='admin_id' value='".$row["id"]."'>";
        echo "<input type='password' name='new_password' placeholder='New Password' required>";
        echo "<button type='submit'>Change Password</button>";
        echo "</form>";
        echo "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "<h2>No admin details found.</h2>";
}

// Close connection
$mysqli->close();
?>



<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Accounts</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: wheat;
            margin-left: 0;
            font-size:20px;
            box-sizing: 5px ;
            align-items: center;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 50px;
           
            font-weight: bold;
        
        }
    </style>
</head>
<body>
    
</body>
</html>