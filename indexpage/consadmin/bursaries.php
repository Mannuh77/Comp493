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

// Fetch data from the bursaryapplications table based on the entered constituencyNumber
$constituencyNumber = $_SESSION['constituencyNumber'];
$sql = "SELECT studentname, phone, idNumber, subcounty, constituencyNumber, email, address, school, course, feebalance, year, reason, applicationdate, registrationnumber, applicationcode, constituencyName, admissionletter, idcertificate, wards, supportingdocs FROM bursaryapplications WHERE constituencyNumber = ?";
$stmt = $mysqli->prepare($sql);
$stmt->bind_param("i", $constituencyNumber);
$stmt->execute();
$result = $stmt->get_result();

// Output the heading
echo "<h2>Bursary Applications</h2>";

if ($result->num_rows > 0) {
    // Output table header
    echo "<table border='1'>";
    echo "<tr><th>Student Name</th><th>Phone</th><th>ID Number</th><th>Subcounty</th><th>Constituency Number</th><th>Email</th><th>Address</th><th>School</th><th>Course</th><th>Fee Balance</th><th>Year</th><th>Reason</th><th>Application Date</th><th>Registration Number</th><th>Application Code</th><th>Constituency Name</th><th>Admission Letter</th><th>ID Certificate</th><th>Wards</th><th>Supporting Documents</th></tr>";
    
    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["studentname"] . "</td>";
        echo "<td>" . $row["phone"] . "</td>";
        echo "<td>" . $row["idNumber"] . "</td>";
        echo "<td>" . $row["subcounty"] . "</td>";
        echo "<td>" . $row["constituencyNumber"] . "</td>";
        echo "<td>" . $row["email"] . "</td>";
        echo "<td>" . $row["address"] . "</td>";
        echo "<td>" . $row["school"] . "</td>";
        echo "<td>" . $row["course"] . "</td>";
        echo "<td>" . $row["feebalance"] . "</td>";
        echo "<td>" . $row["year"] . "</td>";
        echo "<td>" . $row["reason"] . "</td>";
        echo "<td>" . $row["applicationdate"] . "</td>";
        echo "<td>" . $row["registrationnumber"] . "</td>";
        echo "<td>" . $row["applicationcode"] . "</td>";
        echo "<td>" . $row["constituencyName"] . "</td>";

        // Links to view uploaded files
        echo "<td><a href='openpdf.php?name=" . $row["admissionletter"] . "' target='_blank'>View Admission Letter</a></td>";
        echo "<td><a href='openpdf.php?name=" . $row["idcertificate"] . "' target='_blank'>View ID Certificate</a></td>";
        echo "<td><a href='openpdf.php?name=" . $row["supportingdocs"] . "' target='_blank'>View Supporting Docs</a></td>";

        echo "<td>" . $row["wards"] . "</td>";
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
    <title>Bursary Applications</title>
    <style>
        body {
            font-family: Arial, sans-serif;
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
</head>
<body>
    <div class="container">
        <?php if (!empty($applications)) : ?>
            <h2>Bursary Applications</h2>
            <table>
                <tr>
                    <?php foreach ($applications[0] as $key => $value) : ?>
                        <?php if ($key !== 'id') : ?>
                            <th><?php echo ucfirst($key); ?></th>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </tr>
                <?php foreach ($applications as $application) : ?>
                    <tr>
                        <?php foreach ($application as $key => $value) : ?>
                            <?php if ($key !== 'id') : ?>
                                <td><?php echo $value; ?></td>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    </tr>
                <?php endforeach; ?>
            </table>
            <button onclick="window.print()">Print</button>

        <?php else : ?>
            <p></p>
        <?php endif; ?>
    
</body>
</html>
