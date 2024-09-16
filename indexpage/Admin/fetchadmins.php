<?php
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

// SQL query to fetch data from admins table
$sql = "SELECT * FROM admins";
$result = $mysqli->query($sql);

// Check if any rows are returned
if ($result->num_rows > 0) {
    // Output a heading title
    echo "<h2>Admin Accounts</h2>";

    // Output data of each row within a table
    echo "<table border='1'>";
    echo "<tr><th>ID</th><th>Password</th><th>User Type</th><th>Email</th><th>First Name</th><th>Last Name</th><th>Constituency Number</th><th>ID Number</th></tr>";
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
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
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
