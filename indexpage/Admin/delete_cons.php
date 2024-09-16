<?php
// Check if ID is provided through GET method
if(isset($_GET['id']) && !empty($_GET['id'])) {
    // Sanitize the ID to prevent SQL injection
    $id = $_GET['id'];

    // Database connection details
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

    // SQL query to delete the constituency with the provided ID
    $sql = "DELETE FROM cons WHERE id = $id";

    // Execute the query
    if ($mysqli->query($sql) === TRUE) {
        // Redirect back to the page where the constituency list is displayed
        header("Location: fetchcons.php");
        exit();
    } else {
        echo "Error deleting record: " . $mysqli->error;
    }

    // Close connection
    $mysqli->close();
} else {
    // If ID is not provided, redirect back to the page where the constituency list is displayed
    header("Location: fetchcons.php");
    exit();
}
?>
