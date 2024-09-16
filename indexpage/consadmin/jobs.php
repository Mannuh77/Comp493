<?php
session_start();

// Redirect users if the constituency number is not set in the session
if (!isset($_SESSION["constituencyNumber"])){
    header('location: ../indexpage/consadmin.php');
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

// Fetch data from the job_applications table based on the entered constituencyNumber
$constituencyNumber = $_SESSION['constituencyNumber'];
$sql = "SELECT full_name, email, phone, job_applied_for, constituency_name, resume_file_name, application_date, idnumber, application_letter FROM job_applications WHERE constituencyNumber = ?";
$stmt = $mysqli->prepare($sql);
$stmt->bind_param("i", $constituencyNumber);
$stmt->execute();
$result = $stmt->get_result();

// Output the heading
echo "<h2>Job Applications</h2>";

if ($result->num_rows > 0) {
    // Output table header
    echo "<table border='1'>";
    echo "<tr><th>Full Name</th><th>Email</th><th>Phone</th><th>Job Applied For</th><th>Constituency Name</th><th>Resume</th><th>Application Date</th><th>ID Number</th><th>Application Letter</th></tr>";
    
    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["full_name"] . "</td>";
        echo "<td>" . $row["email"] . "</td>";
        echo "<td>" . $row["phone"] . "</td>";
        echo "<td>" . $row["job_applied_for"] . "</td>";
        echo "<td>" . $row["constituency_name"] . "</td>";

        // Resume file path link
        echo "<td><a href='openpdf.php?name=" . $row["resume_file_name"] . "' target='_blank'>View/Download Resume</a></td>";

        echo "<td>" . $row["application_date"] . "</td>";
        echo "<td>" . $row["idnumber"] . "</td>";

        // Application letter file path link
        echo "<td><a href='openpdf.php?name=". $row["application_letter"] . "' target='_blank'>View/Download Application Letter</a></td>";

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

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jobs Applications</title>
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