<?php
// Database connection parameters
$db_username = 'root';
$db_password = '';
$db_name = 'users_register';
$db_host = 'localhost';

// Start session
session_start();

// Establishing a database connection
$mysqli = new mysqli($db_host, $db_username, $db_password, $db_name);

// Check connection
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli->connect_error;
    exit();
}

// Check if the form has been submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if constituencyNumber is set in POST data
    if (isset($_POST['constituencyNumber'])) {
        // Store the entered constituencyNumber in session
        $_SESSION['constituencyNumber'] = $_POST['constituencyNumber'];
    }

    // Check if updated_notice is set in POST data
    if (isset($_POST['updated_notice'])) {
        // Retrieve the updated notice content from the form
        $updated_notice = $_POST['updated_notice'];
        $constituencyNumber = $_SESSION['constituencyNumber'];

        // SQL query to update the notice content in the notice table
        $sql_update = "UPDATE notice SET notification = ? WHERE constituencyNumber = ?";

        // Prepare the statement
        $stmt = $mysqli->prepare($sql_update);

        // Bind parameters
        $stmt->bind_param("ss", $updated_notice, $constituencyNumber);

        // Execute the statement
        if ($stmt->execute()) {
            echo "Notice updated successfully.";
        } else {
            echo "Error updating notice: " . $stmt->error;
        }

        // Close the statement
        $stmt->close();
    }
}

// Retrieve constituencyNumber from session
if (isset($_SESSION['constituencyNumber'])) {
    $constituencyNumber = $_SESSION['constituencyNumber'];

    // SQL query to select notification from notice table for the entered constituencyNumber
    $sql_select = "SELECT notification FROM notice WHERE constituencyNumber = ?";

    // Prepare the statement
    $stmt = $mysqli->prepare($sql_select);

    // Bind parameter
    $stmt->bind_param("s", $constituencyNumber);

    // Execute the query
    $stmt->execute();

    // Bind result variables
    $stmt->bind_result($notification);

    echo "<h2>NOTICES</h2>";
    // Check if there are any rows returned
    if ($stmt->fetch()) {
        // Display table header
        echo "<table border='1'>";
        echo "<tr><th> Notification</th><th>Action</th></tr>";

        // Display the notification content
        echo "<tr>";
        echo "<td style='font-size:20px;'>";
        echo  $notification;
        echo "</td>";
        echo "<td>";
        // Display a button to change notification content
        echo "<form method='post' action=''>";
        echo "<input type='text' style='width:80%;font-size:20px;' name='updated_notice' value='{$notification}'>";
        echo "<input type='submit' style='font-size:20px;' name='change_notice' value='Save'>";
        echo "</form>";
        echo "</td>";
        echo "</tr>";

        echo "</table>";
    } else {
        echo "No notifications found for constituencyNumber: " . $constituencyNumber;
    }

    // Close the statement
    $stmt->close();
} else {
    echo "Please enter a constituencyNumber.";
}

// Close the database connection
$mysqli->close();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notice</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: whitesmokes;
            margin-left: 0;
            font-size:30px;
            box-sizing: 5px ;
            align-items: center;
            padding: 0;
        }
        h2 {
            margin-top: 20px;
        }
        table {
            border-collapse: collapse;
            width: 50%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
       
    </style>