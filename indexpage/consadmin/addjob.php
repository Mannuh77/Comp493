<?php
// Start the session
session_start();

// Establish database connection
$db_username = 'root';
$db_password = '';
$db_name = 'users_register';
$db_host = 'localhost';
$mysqli = new mysqli($db_host, $db_username, $db_password, $db_name);

// Check connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate form data
    $constituencyNumber = $_POST['constituencyNumber'];
    $vacancy1 = $_POST['vacancy1'];
    
    // Check if file is uploaded
    if(isset($_FILES['jobrequirements']) && $_FILES['jobrequirements']['error'] === UPLOAD_ERR_OK) {
        // File upload path
        $targetDir = "../uploads/"; // Use relative path from the current directory
        $fileName = basename($_FILES['jobrequirements']['name']);
        $targetFilePath = $targetDir . $fileName;
        
        // Move uploaded file to target directory
        if(move_uploaded_file($_FILES['jobrequirements']['tmp_name'], $targetFilePath)) {
            // Prepare the SQL statement
            $sql = "INSERT INTO vacancies (constituencyNumber, vacancy1, jobrequirements) VALUES (?, ?, ?)";
            
            // Prepare the statement
            $stmt = $mysqli->prepare($sql);
            
            // Bind parameters
            $stmt->bind_param("iss", $constituencyNumber, $vacancy1, $targetFilePath);
            
            // Execute the statement
            if ($stmt->execute()) {
                echo "Vacancy added successfully.";
            } else {
                echo "Error: " . $stmt->error;
            }
            
            // Close the statement
            $stmt->close();
        } else {
            echo "Error uploading file.";
        }
    } else {
        echo "Please select a file.";
    }
}

// Close database connection
$mysqli->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Add Vacancy</title>
</head>
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
<body>
    <h2>Add Vacancy</h2>
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" enctype="multipart/form-data">
        <label for="constituencyNumber">Constituency Number:</label><br>
        <input type="number" id="constituencyNumber" name="constituencyNumber" required><br><br>
        
        <label for="vacancy1">Vacancy Description:</label><br>
        <input type="text" id="vacancy1" name="vacancy1" required><br><br>
        
        <label for="jobrequirements">Upload Job Requirements:</label><br>
        <input type="file" id="jobrequirements" name="jobrequirements" required><br><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>

    

