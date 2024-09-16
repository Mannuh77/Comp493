<?php
$db_username = 'root';
$db_password = '';
$db_name = 'users_register';
$db_host = 'localhost';

// Check if the delete button is clicked
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["delete"])) {
    // Create a connection
    $mysqli = new mysqli($db_host, $db_username, $db_password, $db_name);

    // Check the connection
    if ($mysqli->connect_error) {
        die("Connection failed: " . $mysqli->connect_error);
    }

    // Retrieve the ID of the admin to be deleted
    $admin_id = $_POST["delete"];
    
    // Prepare and execute SQL query to delete the admin
    $stmt = $mysqli->prepare("DELETE FROM consadmin WHERE id = ?");
    $stmt->bind_param("i", $admin_id);
    $stmt->execute();
    $stmt->close();

    // Close connection
    $mysqli->close();

    // Redirect back to the page where the delete button was clicked
    header("Location: ".$_SERVER['HTTP_REFERER']);
    exit;
} else {
    // If delete button is not clicked, redirect to homepage or any other appropriate page
    header("Location: index.php");
    exit;
}
?>
