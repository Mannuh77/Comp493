<?php
// Start session
session_start();

// Database connection parameters
$db_host = 'localhost';
$db_username = 'root';
$db_password = '';
$db_name = 'users_register'; // Replace 'your_database_name' with your actual database name

// Create connection
$conn = new mysqli($db_host, $db_username, $db_password, $db_name);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to delete a message
function deleteMessage($conn, $messageId) {
    $sql = "DELETE FROM conhelp WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $messageId);
    $stmt->execute();
    $stmt->close();
}

// Check if delete request is made
if(isset($_POST['delete_message_id'])) {
    $delete_message_id = $_POST['delete_message_id'];
    deleteMessage($conn, $delete_message_id);
}

// Check if constituencyNumber is set in session
if(isset($_SESSION['constituencyNumber'])) {
    $constituencyNumber = $_SESSION['constituencyNumber'];

    // Prepare and execute SQL query with the filtered constituencyNumber
    $sql = "SELECT id, message, email, created_at, constituencyNumber FROM conhelp WHERE constituencyNumber = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $constituencyNumber);
    $stmt->execute();
    $result = $stmt->get_result();

    // Check if there are rows in the result set
    if ($result->num_rows > 0) {
        // Output data of each row
        echo "<h2>RECEIVED REQUESTS</h2>";
        echo "<table border='1'>";
        echo "<tr><th>Message</th><th>Email</th><th>Created At</th><th>Constituency Number</th><th>Action</th></tr>";
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . htmlspecialchars($row["message"]) . "</td>";
            echo "<td><a href='mailto:" . htmlspecialchars($row["email"]) . "'>" . htmlspecialchars($row["email"]) . "</a></td>";
            echo "<td>" . $row["created_at"] . "</td>";
            echo "<td>" . $row["constituencyNumber"] . "</td>";
            echo "<td><button onclick='deleteMessage(" . $row["id"] . ")'>Delete</button></td>";
            echo "</tr>";
        }
        echo "</table>";

        // Print preview button
        echo "<button onclick='window.print()'>Download</button>";
    } else {
        echo "0 results";
    }
} else {
    echo "No constituency number set in session.";
}

// Close statement and connection
$stmt->close();
$conn->close();
?>
<script>
// JavaScript function to delete a message
function deleteMessage(messageId) {
    if (confirm("Are you sure you want to delete this message?")) {
        // Send AJAX request to delete message
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                // Reload page after deletion
                location.reload();
            }
        };
        xhr.send("delete_message_id=" + messageId);
    }
}
</script>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Help Requests</title>
    
    

<head>
    
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