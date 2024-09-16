<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Print Constituency Information</title>
    
        <style>
        /* Define your table styles here */
        table {
            border-collapse: collapse;
            width: 100%;
            background-color: wheat; /* Set background color to wheat */
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        /* Define other styles as needed */
    
    </style>
</head>
<body>

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
    // Output data of each row as a table
    while($row = $result->fetch_assoc()) {
        echo "<h2>Constituency Name: " . $row["name"] . "</h2>"; 
        echo "<table>";
        // Output table rows with data
        foreach ($row as $key => $value) {
            echo "<tr>";
            echo "<td><strong>".$key.":</strong></td>";
            echo "<td>".$value."</td>";
            echo "</tr>";
        }
        
        echo "</table>";
        
        // Add print button after each table
        echo "<button onclick='printTable(this.parentNode)'>Print</button>";
        echo "<br><br>";
    }
} else {
    echo "0 results";
}

// Close connection
$mysqli->close();
?>

<script>
    function printTable(table) {
        var divContents = table.innerHTML;
        var printWindow = window.open('', '', 'height=400,width=800');
        printWindow.document.write('<html><head><title>Print</title></head><body>');
        printWindow.document.write(divContents);
        printWindow.document.write('</body></html>');
        printWindow.document.close();
        printWindow.print();
    }
</script>

</body>
</html>
