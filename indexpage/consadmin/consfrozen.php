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

// SQL query to fetch frozen accounts based on constituencyNumber and frozen status
$sql = "SELECT * FROM users WHERE constituencyNumber = '" . $_SESSION["constituencyNumber"] . "' AND status = 'frozen'";
$result = $mysqli->query($sql);

// Check if any frozen accounts are returned
if ($result->num_rows > 0) {
    // Output heading title
    echo "<h2>Frozen Accounts</h2>";
    echo "<form action='frozenpdf.php' method='post'>";
    // Output data of each frozen account within a table
    echo "<table border='1'>";
    echo "<tr><th>First Name</th><th>Last Name</th><th>Email</th><th>ID Number</th><th>Constituency Number</th><th>Action</th></tr>";
    while($row = $result->fetch_assoc()) {
        // Output data as table rows
        echo "<tr>";
        echo "<td>".$row["firstname"]."</td>";
        echo "<td>".$row["lastname"]."</td>";
        echo "<td>".$row["email"]."</td>";
        echo "<td>".$row["idnumber"]."</td>";
        echo "<td>".$row["constituencyNumber"]."</td>";
        echo "<td>";
        // Add buttons for admin actions
        echo "<form method='post' action='admin_actions.php'>";
        echo "<input type='hidden' name='id' value='".$row["id"]."'>";
        echo "<button type='submit' name='unfreeze'>Unfreeze</button>"; // Add Unfreeze button
        echo "</form>";
        echo "</td>";
        echo "</tr>";
    }
    echo "</table>";
    echo "<button type='submit'>Download PDF</button>";
    echo "</form>";
} else {
    echo "<h2>No frozen accounts found.</h2>";
}

// Close connection
$mysqli->close();
?>



<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registered Accounts</title>
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