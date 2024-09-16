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

// If the delete button is clicked for any admin
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["delete"])) {
    // Retrieve the ID of the admin to be deleted
    $admin_id = $_POST["delete"];
    
    // Prepare and execute SQL query to delete the admin
    $stmt = $mysqli->prepare("DELETE FROM consadmin WHERE id = ?");
    $stmt->bind_param("i", $admin_id);
    $stmt->execute();
    $stmt->close();
}

// If the form for adding a new admin is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["submit"])) {
    // Retrieve form data
    $firstname = $_POST["firstname"];
    $lastname = $_POST["lastname"];
    $email = $_POST["email"];
    $idnumber = $_POST["idnumber"];
    $constituencyNumber = $_POST["constituencyNumber"];

    // Prepare and execute SQL query to insert new admin
    $stmt = $mysqli->prepare("INSERT INTO consadmin (firstname, lastname, email, idnumber, constituencyNumber) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $firstname, $lastname, $email, $idnumber, $constituencyNumber);
    $stmt->execute();
    $stmt->close();
}

// SQL query to fetch data from consadmin table
$sql = "SELECT * FROM consadmin";
$result = $mysqli->query($sql);

// Check if any rows are returned
if ($result->num_rows > 0) {
    // Output heading title
    echo "<h2>Registered Constituency Admins</h2>";
    echo "<div class='pdf-download'>";
    echo "<form action='consadmins_pdf.php' method='post'>";
    // Output data of each row within a table
    echo "<form action='".htmlspecialchars($_SERVER["PHP_SELF"])."' method='post'>";
    echo "<table border='1'>";
    echo "<tr><th>First Name</th><th>Last Name</th><th>Email</th><th>ID Number</th><th>Constituency Number</th><th>Action</th></tr>";
    while($row = $result->fetch_assoc()) {
        // Output data as table rows
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

    echo "<button type='submit'>Download PDF</button>";
    echo "</div>"; // Close pdf-download div

 
    echo "<h2 style='font-size: 24px;margin-left:3%;'>Add Constituency Admin</h2>"; // Increase font size
    echo "<form action='".htmlspecialchars($_SERVER["PHP_SELF"])."' method='post'>";
    echo "<label for='firstname' style='font-size: 24px;margin-left:3%;'>First Name:</label>";
    echo "<input type='text' name='firstname' style='width: 300px; height: 50px;margin-left:3%;'><br>"; // Increase input field width
    echo "<label for='lastname' style='font-size: 24px;margin-left:10%;'>Last Name:</label>";
    echo "<input type='text' name='lastname' style='width: 300px;height: 50px;margin-left:3%;'><br>"; // Increase input field width
    echo "<label for='email'style='font-size: 24px;margin-left:10%;'>Email:</label>";
    echo "<input type='text' name='email' style='width: 300px;height: 50px;margin-left:3%;'><br>"; // Increase input field width
    echo "<label for='idnumber'style='font-size: 24px;margin-left:10%;'>ID Number:</label>";
    echo "<input type='text' name='idnumber' style='width: 300px;height: 50px;margin-left:3%;'><br>"; // Increase input field width
    echo "<label for='constituencyNumber'style='font-size: 24px;margin-left:3%;'>Constituency Number:</label>";
    echo "<input type='text' name='constituencyNumber' style='width: 300px;height: 50px;margin-left:3%;'><br>"; // Increase input field width
    echo "<button type='submit' name='submit'style='font-size: 24px;margin-left:3%;'><br>Add Admin</button>";
    echo "</form>";
    

   
} else {
    echo "<h2>No registered admins found.</h2>";
}

// Close connection
$mysqli->close();
?>



<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Constituency Admins</title>
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