<?php
session_start();
if (!isset($_SESSION["constituencyNumber"])){
    header('location:consadmin.php');
    exit(); // Add exit after redirect to prevent further execution
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['projectId'])) {
    $projectId = $_POST['projectId'];

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

    // Prepare and execute SQL query to fetch project details for confirmation
    $sql = "SELECT * FROM projects WHERE id = ?";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("i", $projectId);
    $stmt->execute();
    $result = $stmt->get_result();
    $project = $result->fetch_assoc();

    // Close prepared statement for fetching project details
    $stmt->close();

    if ($project) {
        // Display a confirmation dialog before deletion
        echo "<script>";
        echo "if (confirm('Are you sure you want to delete this project?')) {";
        echo "    window.location.href = 'delete_project_confirm.php?projectId={$projectId}';";
        echo "} else {";
        echo "    window.location.href = 'consadmin.php';";
        echo "}";
        echo "</script>";
    } else {
        echo "Project not found.";
    }

    // Close database connection
    $mysqli->close();
} else {
    echo "Invalid request.";
}
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

