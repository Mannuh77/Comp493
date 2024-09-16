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

// SQL query to fetch data from page_logs table
$sql = "SELECT * FROM page_logs";
$result = $mysqli->query($sql);

// Check if any rows are returned
if ($result->num_rows > 0) {
    // Output heading title
    echo "<h2>Page Logs</h2>";
    // Output data of each row within a table
    echo "<table border='1'>";
    echo "<tr><th>ID</th><th>Timestamp</th><th style='width: 150px;'>User IP</th><th>User Agent</th><th>Page Visited</th></tr>"; // Adjusted width for User IP
    while($row = $result->fetch_assoc()) {
        // Output data as table rows
        echo "<tr>";
        echo "<td>".$row["id"]."</td>";
        echo "<td>".$row["timestamp"]."</td>";
        echo "<td>".$row["user_ip"]."</td>";
        echo "<td>".$row["user_agent"]."</td>";
        echo "<td>".$row["page_visited"]."</td>";
        echo "</tr>";
    }
    echo "</table>";
    
    // Print preview button
    echo "<button onclick='window.print()'>Print Preview</button>";
} else {
    echo "<h2>No page logs found.</h2>";
}

// Close connection
$mysqli->close();
?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Logs</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: wheat;
            margin-left: 0;
            font-size:20px;
            box-sizing: 5px ;
               
            font-weight: bold;
            align-items: center;
            padding: 0;
     
        }



        .column-container {
    border: 1px solid #000;
    padding: 10px;
    margin: 10px;
}

.row {
    border-bottom: 1px solid #000;
    padding: 5px 0;
}

.row:last-child {
    border-bottom: none;
}

    </style>
</head>
<body>
    
</body>
</html>