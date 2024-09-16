<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $name = $_POST['name'];
    $constituencyNumber = $_POST['constituencyNumber'];
    $location = $_POST['location'];
    $description = $_POST['description'];
    $projects = $_POST['projects'];
    $mpname = $_POST['mpname'];
    $aboutMp = $_POST['aboutMp'];
    $comchair = $_POST['comchair'];
    $comvchair = $_POST['comvchair'];
    $wardrep1 = $_POST['wardrep1'];
    $wardrep2 = $_POST['wardrep2'];
    $fund = $_POST['fund'];
    $accountant = $_POST['accountant'];
    $ictmanager = $_POST['ictmanager'];
    $projectmanager = $_POST['projectmanager'];
    $secretary = $_POST['secretary'];
    $security = $_POST['security'];
    $disablerep = $_POST['disablerep'];
    $_SESSION["allocate"] = $cons['allocate'];
    


    // Database connection
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

    // Function to handle file upload
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

    // Upload images and get their paths
    $image1 = uploadImage("image1");
    $image2 = uploadImage("image2");
    $image3 = uploadImage("image3");
    $simage = uploadImage("image4");

    // SQL query to insert data into cons table
    $sql = "INSERT INTO cons (name, constituencyNumber, location, description, projects, mpname, `About Mp`, comchair, comvchair, wardrep1, wardrep2, fund, accountant, ictmanager, projectmanager, secretary, security, disablerep, allocate,  image1, image2, image3, simage)
            VALUES ('$name', '$constituencyNumber', '$location', '$description', '$projects', '$allocate', '$mpname', '$aboutMp', '$comchair', '$comvchair', '$wardrep1', '$wardrep2', '$fund', '$accountant', '$ictmanager', '$projectmanager', '$secretary', '$security', '$disablerep', '$image1', '$image2', '$image3', '$simage')";

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
    <title>Add Constituency</title>
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
                <h2>Add Constituency</h2>
                <label for="name">Constituency Name:</label>
                <input type="text" id="name" name="name" required>
                <label for="constituencyNumber">Constituency Number:</label>
                <input type="number" id="constituencyNumber" name="constituencyNumber" required>
                <label for="location">Location:</label>
                <input type="text" id="location" name="location" required>
                <label for="description">Description:</label>
                <textarea id="description" name="description" required></textarea>
                <label for="projects">Projects:</label>
                <textarea id="projects" name="projects" required></textarea>
                <label for="mpname">MP Name:</label>
                <input type="text" id="mpname" name="mpname" required>
                <label for="aboutMp">About MP:</label>
                <textarea id="aboutMp" name="aboutMp" required></textarea>
                <label for="comchair">Community Chair:</label>
                <input type="text" id="comchair" name="comchair" required>
                <label for="comvchair">Community Vice Chair:</label>
                <input type="text" id="comvchair" name="comvchair" required>
                <label for="wardrep1">Ward Representative 1:</label>
                <input type="text" id="wardrep1" name="wardrep1" required>
                <label for="wardrep2">Ward Representative 2:</label>
                <input type="text" id="wardrep2" name="wardrep2" required>
                <label for="fund">Fund:</label>
                <input type="text" id="fund" name="fund" required>
                <label for="accountant">Accountant:</label>
                <textarea id="accountant" name="accountant" required></textarea>
                <label for="ictmanager">ICT Manager:</label>
                <textarea id="ictmanager" name="ictmanager" required></textarea>
                <label for="projectmanager">Project Manager:</label>
                <textarea id="projectmanager" name="projectmanager" required></textarea>
                <label for="secretary">Secretary:</label>
                <textarea id="secretary" name="secretary" required></textarea>
                <label for="security">Security:</label>
                <textarea id="security" name="security" required></textarea>
                <label for="disablerep">Disability Representative:</label>
                <input type="text" id="disablerep" name="disablerep" required>
                <label for="allocate">Amount Allocated:</label>
                <input type="text" id="allocate" name="allocate" required>
                <label for="image1">Image 1:</label>
                <input type="file" id="image1" name="image1" accept="image/*" required>
                <label for="image2">Image 2:</label>
                <input type="file" id="image2" name="image2" accept="image/*" required>
                <label for="image3">Image 3:</label>
                <input type="file" id="image3" name="image3" accept="image/*" required>
                <label for="image4">Image 4:</label>
                <input type="file" id="image4" name="image4" accept="image/*" required>
                <input type="submit" value="Add Constituency">
            </form>
        </div>
    </div>
</body>
</html>
