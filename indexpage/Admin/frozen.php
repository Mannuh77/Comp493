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

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if delete button is clicked
    if (isset($_POST['delete'])) {
        $id = $_POST['id']; // Change user_id to id
        // SQL query to delete user from users table
        $sql = "DELETE FROM users WHERE id = $id"; // Change user_id to id
        if ($mysqli->query($sql) === TRUE) {
            echo "<div class='success'>User deleted successfully.</div>";
        } else {
            echo "<div class='error'>Error deleting user: " . $mysqli->error . "</div>";
        }
    }

    // Check if ban button is clicked
    if (isset($_POST['ban'])) {
        $id = $_POST['id']; // Change user_id to id
        // SQL query to update user status to banned
        $sql = "UPDATE users SET status = 'banned' WHERE id = $id"; // Change user_id to id
        if ($mysqli->query($sql) === TRUE) {
            echo "<div class='success'>User banned successfully.</div>";
        } else {
            echo "<div class='error'>Error banning user: " . $mysqli->error . "</div>";
        }
    }

    // Check if unban button is clicked
    if (isset($_POST['unban'])) {
        $id = $_POST['id']; // Change user_id to id
        // SQL query to update user status to unbanned
        $sql = "UPDATE users SET status = 'active' WHERE id = $id"; // Change user_id to id
        if ($mysqli->query($sql) === TRUE) {
            echo "<div class='success'>User unbanned successfully.</div>";
        } else {
            echo "<div class='error'>Error unbanning user: " . $mysqli->error . "</div>";
        }
    }

    // Check if freeze button is clicked
    if (isset($_POST['freeze'])) {
        $id = $_POST['id']; // Change user_id to id
        // SQL query to update user status to frozen
        $sql = "UPDATE users SET status = 'frozen' WHERE id = $id"; // Change user_id to id
        if ($mysqli->query($sql) === TRUE) {
            echo "<div class='success'>User frozen successfully.</div>";
        } else {
            echo "<div class='error'>Error freezing user: " . $mysqli->error . "</div>";
        }
    }

    // Check if unfreeze button is clicked
    if (isset($_POST['unfreeze'])) {
        $id = $_POST['id']; // Change user_id to id
        // SQL query to update user status to unfrozen
        $sql = "UPDATE users SET status = 'active' WHERE id = $id"; // Change user_id to id
        if ($mysqli->query($sql) === TRUE) {
            echo "<div class='success'>User unfrozen successfully.</div>";
        } else {
            echo "<div class='error'>Error unfreezing user: " . $mysqli->error . "</div>";
        }
    }
}

// SQL query to fetch frozen accounts
$sql = "SELECT * FROM users WHERE status = 'frozen'";
$result = $mysqli->query($sql);

// Check if any frozen accounts are returned
if ($result->num_rows > 0) {
    // Output data of each frozen account within a table
    echo "<h2>Frozen Accounts</h2>";
    echo "<table border='1'>";
    echo "<tr><th>First Name</th><th>Last Name</th><th>Email</th><th>ID Number</th><th>Constituency Number</th><th>Action</th></tr>";
    while ($row = $result->fetch_assoc()) {
        // Output data as table rows
        echo "<tr>";
        echo "<td>" . $row["firstname"] . "</td>";
        echo "<td>" . $row["lastname"] . "</td>";
        echo "<td>" . $row["email"] . "</td>";
        echo "<td>" . $row["idnumber"] . "</td>";
        echo "<td>" . $row["constituencyNumber"] . "</td>";
        echo "<td>";
        // Add buttons for admin actions
        echo "<form method='post' action='admin_actions.php'>";
        echo "<input type='hidden' name='id' value='" . $row["id"] . "'>";
        echo "<button type='submit' name='delete'>Delete</button>";
        echo "<button type='submit' name='ban'>Ban</button>";
        echo "<button type='submit' name='unfreeze'>Unfreeze</button>";
        echo "</form>";
        echo "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "<h2 style='color: Red; font-family: Arial; font-size: 34px; font-weight:bold;'>No frozen accounts found.</h2>";

}

// Close connection
$mysqli->close();
?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Frozen Accounts</title>
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