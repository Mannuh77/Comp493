<?php
require('../../fpdf/fpdf.php');

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

// SQL query to fetch data from cons table
$sql = "SELECT * FROM cons";
$result = $mysqli->query($sql);

// Check if any rows are returned
if ($result->num_rows > 0) {
    // Output data of each row as a styled list
    echo "<style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
    </style>";
    echo "<table>";
    while($row = $result->fetch_assoc()) {
        foreach ($row as $key => $value) {
            echo "<tr>";
            echo "<td><strong>".$key.":</strong></td>";
            echo "<td>".$value."</td>";
            echo "</tr>";
        }
        // Add delete button
        echo "<tr>";
        echo "<td></td>";
        echo "<td><button onclick='deleteCons(".$row["id"].")'>Delete</button></td>";
        echo "</tr>";
        
        // Add download button
        echo "<tr>";
        echo "<td></td>";
        echo "<td><form action='cons_pdf.php' method='post'>";
        echo "<input type='hidden' name='id' value='".$row["id"]."'>";
        echo "<button type='submit'>Download PDF</button>";
        echo "</form></td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

// Close connection
$mysqli->close();
?>

<script>
    function deleteCons(id) {
        if(confirm("Are you sure you want to delete this constituency?")) {
            window.location = "delete_cons.php?id=" + id;
        }
    }
</script>

<button onclick="window.location.href='add_cons.php'">Add Constituency</button>

<style>
    .cons-list {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
    }
    .cons-item {
        border: 1px solid #ccc;
        padding: 10px;
        width: 800px;
    }
    .cons-item h3 {
        margin-top: 0;
    }
    .cons-item button {
        margin-top: 10px;
    }
</style>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Constituencies Panel</title>
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
            max-width: 700px;
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