<?php
// Database credentials
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

// Function to update data in the database
function updateData($mysqli, $id, $column, $value) {
    // Enclose the column name in backticks
    $stmt = $mysqli->prepare("UPDATE overall SET `$column` = ? WHERE id = ?");
    $stmt->bind_param("si", $value, $id);
    $stmt->execute();
    $stmt->close();
}

// Function to handle file uploads
function uploadFile($file) {
    $target_dir = "images/";
    $file_name = uniqid() . '_' . basename($file["name"]);
    $target_file = $target_dir . $file_name;
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    // Check if image file is a actual image or fake image
    if(isset($_POST["submit"])) {
        $check = getimagesize($file["tmp_name"]);
        if($check !== false) {
            $uploadOk = 1;
        } else {
            echo "File is not an image.";
            $uploadOk = 0;
        }
    }

    // Check if file already exists
    if (file_exists($target_file)) {
        echo "Sorry, file already exists.";
        $uploadOk = 0;
    }

    // Check file size
    if ($file["size"] > 500000) {
        echo "Sorry, your file is too large.";
        $uploadOk = 0;
    }

    // Allow only certain file formats
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
        if (move_uploaded_file($file["tmp_name"], $target_file)) {
            return $target_file;
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    }
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get values from POST
    $id = $_POST["id"];
    $column = $_POST["column"];
    $value = $_POST["value"];

    // Check if the uploaded file is an image and upload it
    if(isset($_FILES[$column])) {
        $uploaded_file = uploadFile($_FILES[$column]);
        if($uploaded_file) {
            // Update data in the database with the image URL
            updateData($mysqli, $id, $column, $uploaded_file);
        }
    } else {
        // Update data in the database for non-file input fields
        updateData($mysqli, $id, $column, $value);
    }
}

// SQL query to fetch data from the "overall" table
$sql = "SELECT * FROM overall";
$result = $mysqli->query($sql);

// Check if any rows are returned
if ($result->num_rows > 0) {

    echo "<h3 style='margin-left:1%;margin-top:3%;'>Home page Table Data</h3>";
    // Output data of each row in a single column
    echo "<div class='column-container'>";
    while($row = $result->fetch_assoc()) {
        foreach ($row as $key => $value) {
            if ($key == 'kasarani' || $key == 'webuye' || $key == 'kapsowar' || $key == 'kabete' || $key == 'board' || $key == 'empowerment') {
                echo "<div class='row'>";
                echo "<h3>" . $key . ":</h3>";
                echo "<img src='" . $value . "' alt='" . $key . "'>";
                echo "<form method='POST' enctype='multipart/form-data'>
                        <input type='hidden' name='id' value='" . $row['id'] . "'>
                        <input type='hidden' name='column' value='" . $key . "'>
                        <input type='file' name='" . $key . "'>
                        <button type='submit'>Upload</button>
                      </form>";
                echo "</div>";
            } else {
                echo "<div class='row'>";
                echo "<h3>" . $key . ":</h3>";
                echo "<p id='value-" . $row['id'] . "-" . $key . "'>" . $value . "</p>";
                echo "<div class='edit-row' style='display:none;' id='edit-row-" . $row['id'] . "-" . $key . "'>
                        <form method='POST'>
                            <input type='hidden' name='id' value='" . $row['id'] . "'>
                            <input type='hidden' name='column' value='" . $key . "'>
                            <input type='text' name='value' value='" . $value . "'>
                            <button type='submit'>Save</button>
                        </form>
                      </div>";
                echo "<button onclick='editRow(" . $row['id'] . ", \"" . $key . "\")'>Change</button>";
                echo "</div>";
            }
        }
    }
    echo "</div>";
} else {
    echo "0 results";
}

// Close connection
$mysqli->close();
?>





<script>
function editRow(id, column) {
    var valueElement = document.getElementById('value-' + id + '-' + column);
    var editRow = document.getElementById('edit-row-' + id + '-' + column);
    var input = editRow.getElementsByTagName('input')[0];

    valueElement.style.display = 'none';
    editRow.style.display = 'block';

    input.focus();
}
</script>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>overall Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: wheat;
            margin-left: 0;
            font-size:20px;
            box-sizing: 5px ;
               
            font-weight: bold;
            align-items: center;
            padding: 0;
     
        }



        .column-container {
    border: 1px solid #000;
    padding: 10px;
    margin: 10px;
}

.row {
    border-bottom: 1px solid #000;
    padding: 5px 0;
}

.row:last-child {
    border-bottom: none;
}

    </style>
</head>
<body>
    
</body>
</html>