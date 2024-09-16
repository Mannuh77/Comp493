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
            echo "User deleted successfully.";
        } else {
            echo "Error deleting user: " . $mysqli->error;
        }
    }

    // Check if ban button is clicked
    if (isset($_POST['ban'])) {
        $id = $_POST['id']; // Change user_id to id
        // SQL query to update user status to banned
        $sql = "UPDATE users SET status = 'banned' WHERE id = $id"; // Change user_id to id
        if ($mysqli->query($sql) === TRUE) {
            echo "User banned successfully.";
        } else {
            echo "Error banning user: " . $mysqli->error;
        }
    }

    // Check if unban button is clicked
    if (isset($_POST['unban'])) {
        $id = $_POST['id']; // Change user_id to id
        // SQL query to update user status to unbanned
        $sql = "UPDATE users SET status = 'active' WHERE id = $id"; // Change user_id to id
        if ($mysqli->query($sql) === TRUE) {
            echo "User unbanned successfully.";
        } else {
            echo "Error unbanning user: " . $mysqli->error;
        }
    }

    // Check if freeze button is clicked
    if (isset($_POST['freeze'])) {
        $id = $_POST['id']; // Change user_id to id
        // SQL query to update user status to frozen
        $sql = "UPDATE users SET status = 'frozen' WHERE id = $id"; // Change user_id to id
        if ($mysqli->query($sql) === TRUE) {
            echo "User frozen successfully.";
        } else {
            echo "Error freezing user: " . $mysqli->error;
        }
    }

    // Check if unfreeze button is clicked
    if (isset($_POST['unfreeze'])) {
        $id = $_POST['id']; // Change user_id to id
        // SQL query to update user status to unfrozen
        $sql = "UPDATE users SET status = 'active' WHERE id = $id"; // Change user_id to id
        if ($mysqli->query($sql) === TRUE) {
            echo "User unfrozen successfully.";
        } else {
            echo "Error unfreezing user: " . $mysqli->error;
        }
    }
}

// Close connection
$mysqli->close();
?>
