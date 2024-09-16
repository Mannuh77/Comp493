<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $constituencyNumber = $_POST['constituencyNumber'];
    $summary1 = $_POST['summary1'];
    $status1 = $_POST['status1'];
    $start1 = $_POST['start1'];
    $complete1 = $_POST['complete1'];
    $amount1 = $_POST['amount1'];
    $ward = $_POST['ward'];
    $usedamount = $_POST['usedamount'];
    $notice = $_POST['notice'];
    // Handle the data as needed

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

    function uploadImage($fieldName) {
        $targetDir = "images2/";
        $uniqueID = uniqid();
        $targetFile = $targetDir . $uniqueID . '_' . basename($_FILES[$fieldName]["name"]);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));
        
        // Check if image file is a actual image or fake image
        $check = getimagesize($_FILES[$fieldName]["tmp_name"]);
        if($check !== false) {
            $uploadOk = 1;
        } else {
            echo "File is not an image.";
            $uploadOk = 0;
        }

        // Check if file already exists
        if (file_exists($targetFile)) {
            echo "Sorry, file already exists.";
            $uploadOk = 0;
        }

        // Check file size
        if ($_FILES[$fieldName]["size"] > 1000000) {
            echo "Sorry, your file is too large.";
            $uploadOk = 0;
        }

        // Allow certain file formats
        if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif" ) {
            echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
            $uploadOk = 0;
        }

        // Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
            echo "Sorry, your file was not uploaded.";
        // if everything is ok, try to upload file
        } else {
            if (move_uploaded_file($_FILES[$fieldName]["tmp_name"], $targetFile)) {
                return $targetFile;
            } else {
                echo "Sorry, there was an error uploading your file.";
            }
        }
        return "";
    }
    $projimg1 = uploadImage("projimg1");
    $sql = "INSERT INTO projects (constituencyNumber, summary1, status1, start1, complete1, amount1, ward, usedamount, notice, projimg1)
    VALUES ('$constituencyNumber', '$summary1', '$status1', '$start1', '$complete1', '$amount1', '$ward', '$usedamount', '$notice', '$projimg1')";


if ($mysqli->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $mysqli->error;
}

// Close connection
$mysqli->close();
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Project</title>
    <style>
       .container {
            display: flex;
            justify-content: center;
            margin-top: 30px;
            margin-bottom: 10px;
        }
        .form-container {
            width: 60%;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        body {
            font-family: Arial, sans-serif;
            background-color:burlywood;
            margin: 0;
            font-size: 20px;
        }
        
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        
        input[type="text"],
        input[type="number"],
        textarea,
        select {
            width: 100%;
            height: 30px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            padding: 5px;
            box-sizing: border-box;
        }
        
        input[type="file"] {
            width: 100%;
            margin-bottom: 10px;
        }
        
        input[type="submit"] {
            width: 100%;
            height: 40px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" enctype="multipart/form-data">
                <h2>Add Project</h2>
                <label for="constituencyNumber">Constituency Number:</label>
                <input type="number" id="constituencyNumber" name="constituencyNumber" required>
                <label for="summary1">Summary:</label>
                <textarea id="summary1" name="summary1" required></textarea>
                <label for="status1">Status:</label>
                <input type="text" id="status1" name="status1" required>
                <label for="start1">Start Date:</label>
                <input type="date" id="start1" name="start1" required>
                <label for="complete1">Completion Date:</label>
                <input type="date" id="complete1" name="complete1" required>
                <label for="amount1">Amount:</label>
                <input type="number" id="amount1" name="amount1" required>
                <label for="ward">Ward:</label>
                <input type="text" id="ward" name="ward" required>
                <label for="usedamount">Used Amount:</label>
                <input type="number" id="usedamount" name="usedamount" required>
                <label for="notice">Notice:</label>
                <textarea id="notice" name="notice" required></textarea>
                <label for="projimg1">Project Image 1:</label>
                <input type="file" id="projimg1" name="projimg1" accept="image/*" required>
                <input type="submit" value="Add Project">
            </form>
        </div>
    </div>
</body>
</html>





