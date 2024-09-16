<?php
session_start();

// Unset all of the session variables
$_SESSION = array();

// Destroy the session
session_destroy();

// Redirect to the login page or any other page you want after logout
$redirect_page = "../index.php";
if (headers_sent()) {
    // If headers are already sent, use JavaScript to redirect
    echo '<script>window.location.href = "'.$redirect_page.'";</script>';
    exit();
} else {
    // Redirect using PHP header
    header("Location: $redirect_page");
    exit();
}
?>
