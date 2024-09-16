<?php
session_start();

// Redirect users if the constituency number is not set in the session
if (!isset($_SESSION["constituencyNumber"])){
    header('location: consadmin.php');
    exit(); // Add exit after redirect to prevent further execution
}

// Database credentials
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

// Fetch data from the tender_applications table based on the entered constituencyNumber
$constituencyNumber = $_SESSION['constituencyNumber'];
$sql = "SELECT fullname, email, phone, company, tender_name, constituency, kra_pin, business_registration, application_letter, submission_date FROM tender_applications WHERE constituencyNumber = ?";
$stmt = $mysqli->prepare($sql);
$stmt->bind_param("i", $constituencyNumber);
$stmt->execute();
$result = $stmt->get_result();

// Output the heading
echo "<h2>Tender Applications</h2>";

if ($result->num_rows > 0) {
    // Output table header
    echo "<table border='1'>";
    echo "<tr><th>Full Name</th><th>Email</th><th>Phone</th><th>Company</th><th>Tender Name</th><th>Constituency</th><th>KRA PIN</th><th>Business Registration</th><th>Application Letter</th><th>Submission Date</th></tr>";
    
    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["fullname"] . "</td>";
        echo "<td>" . $row["email"] . "</td>";
        echo "<td>" . $row["phone"] . "</td>";
        echo "<td>" . $row["company"] . "</td>";
        echo "<td>" . $row["tender_name"] . "</td>";
        echo "<td>" . $row["constituency"] . "</td>";
      
        
        // Links for uploaded files
        echo "<td><a href='openpdf.php?name=". $row["application_letter"] . "' target='_blank'>View/Download Application Letter</a></td>";
        
        // Link for KRA PIN file
        echo "<td><a href='openpdf.php?name=". $row["kra_pin"] . "' target='_blank'>View/Download KRA PIN</a></td>";

        // Link for Business Registration file
        echo "<td><a href='openpdf.php?name=". $row["business_registration"] . "' target='_blank'>View/Download Business Registration</a></td>";

        echo "<td>" . $row["submission_date"] . "</td>";
        echo "</tr>";
    }
    echo "</table>";

    // Print Preview Button
    echo '<button onclick="window.print();">Download</button><br><br>';
} else {
    echo "No results found";
}

// Close the statement and connection
$stmt->close();
$mysqli->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tenders Applications</title>
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
        h2 {
            margin-top: 20px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>