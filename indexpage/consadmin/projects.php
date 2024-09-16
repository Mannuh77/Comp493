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

// Prepare and execute SQL query to fetch data based on the entered constituencyNumber
$constituencyNumber = $_SESSION['constituencyNumber'];
$sql = "SELECT * FROM projects WHERE constituencyNumber = ?";
$stmt = $mysqli->prepare($sql);
$stmt->bind_param("i", $constituencyNumber);
$stmt->execute();
$result = $stmt->get_result();

// Check if any projects are found
if ($result->num_rows > 0) {
    echo "<h2>Running Projects Report</h2>";
    
    echo "<table border='1'>";
    echo "<tr>";
    // Display field names as table headers
    while ($fieldInfo = $result->fetch_field()) {
        echo "<th>{$fieldInfo->name}</th>";
    }
    echo "<th>Action</th>"; // Add an additional header for the delete action
    echo "</tr>";
    
    while ($row = $result->fetch_assoc()) {
        // Output data of each row
        echo "<tr>";
        foreach ($row as $key => $value) {
            if ($key === 'projimg1' || $key === 'projimg2') {
                // Construct the correct file path relative to the indexpage folder
                $imagePath = '' . $value;
                echo "<td><img style='width:300px;height: 150px;' src='{$imagePath}' alt='image'></td>";
            } else {
                echo "<td>{$value}</td>";
            }
        }
        // Add a delete button for each project
        echo "<td><form method='post' action='delete_project.php'><input type='hidden' name='projectId' value='{$row['id']}'><input type='submit' value='Delete'></form></td>";
        echo "</tr>";
    }
    echo "</table>";

    // Print Preview Button
    echo "<button onclick='window.print()'>Print Preview</button>";
} else {
    echo "No projects found for constituency number: " . $constituencyNumber;
}

// Close prepared statement and database connection
$stmt->close();
$mysqli->close();
?>
<button onclick="window.location.href='add_projects.php'">Add projects</button>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projects Report</title>
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