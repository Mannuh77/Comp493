<?php
// Database connection
$db_username = 'root';
$db_password = '';
$db_name = 'users_register';
$db_host = 'localhost';

$mysqli = new mysqli($db_host, $db_username, $db_password, $db_name);
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// Handle delete action
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["delete"])) {
    $admin_id = $_POST["delete"];
    $stmt = $mysqli->prepare("DELETE FROM consadmin WHERE id = ?");
    $stmt->bind_param("i", $admin_id);
    $stmt->execute();
    $stmt->close();
}

// Handle new admin addition
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["submit"])) {
    $firstname = $_POST["firstname"];
    $lastname = $_POST["lastname"];
    $email = $_POST["email"];
    $idnumber = $_POST["idnumber"];
    $constituencyNumber = $_POST["constituencyNumber"];

    $stmt = $mysqli->prepare("INSERT INTO consadmin (firstname, lastname, email, idnumber, constituencyNumber) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $firstname, $lastname, $email, $idnumber, $constituencyNumber);
    $stmt->execute();
    $stmt->close();
}

// Fetch all admins
$sql = "SELECT * FROM consadmin";
$result = $mysqli->query($sql);

// Display admins
if ($result->num_rows > 0) {
    echo "<h2>Registered Constituency Admins</h2>";
    echo "<div class='pdf-download'>";
    echo "<form action='consadmins_pdf.php' method='post'>";
    echo "<button type='submit'>Download PDF</button>";
    echo "</form>";
    echo "</div>";

    echo "<table border='1'>";
    echo "<tr><th>First Name</th><th>Last Name</th><th>Email</th><th>ID Number</th><th>Constituency Number</th><th>Action</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>".$row["firstname"]."</td>";
        echo "<td>".$row["lastname"]."</td>";
        echo "<td>".$row["email"]."</td>";
        echo "<td>".$row["idnumber"]."</td>";
        echo "<td>".$row["constituencyNumber"]."</td>";
        echo "<td><form action='".htmlspecialchars($_SERVER["PHP_SELF"])."' method='post'>";
        echo "<button type='submit' name='delete' value='".$row["id"]."'>Delete</button>";
        echo "</form></td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "<h2>No registered admins found.</h2>";
}

// Close connection
$mysqli->close();
?>

<h2 style='font-size: 24px;margin-left:3%;'>Add Constituency Admin</h2>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" style="margin-left:3%;">
    <label for="firstname">First Name:</label>
    <input type="text" name="firstname" style="width: 300px; height: 50px;" required><br>
    
    <label for="lastname">Last Name:</label>
    <input type="text" name="lastname" style="width: 300px;height: 50px;" required><br>
    
    <label for="email">Email:</label>
    <input type="email" name="email" style="width: 300px;height: 50px;" required><br>
    
    <label for="idnumber">ID Number:</label>
    <input type="text" name="idnumber" style="width: 300px;height: 50px;" required><br>
    
    <label for="constituencyNumber">Constituency Number:</label>
    <input type="text" name="constituencyNumber" style="width: 300px;height: 50px;" required><br>
    
    <button type="submit" name="submit" style="font-size: 24px;">Add Admin</button>
</form>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Constituency Admins</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: wheat;
            font-size: 20px;
            padding: 0;
            margin-left: 0;
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
            font-weight: bold;
            margin-bottom: 10px;
        }
        .pdf-download, table {
            margin: 20px 0;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
</body>
</html>
