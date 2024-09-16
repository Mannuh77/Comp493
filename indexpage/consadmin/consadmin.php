<?php
session_start();
if (!isset($_SESSION["constituencyNumber"])){
    header('location:consadmin.php');
    exit(); // Add exit after redirect to prevent further execution
}

$host = 'localhost'; 
$dbname = 'users_register'; 
$username = 'root'; 
$password = ''; 

// PDO connection
try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    
    // Set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->prepare("SELECT * FROM consadmin WHERE constituencyNumber = ?");
    $stmt->execute([$_SESSION["constituencyNumber"]]);

    $consadmin = $stmt->fetch(); 
    $_SESSION["usertype"] = $consadmin['usertype'];
    $_SESSION["constituencyNumber"] = $consadmin['constituencyNumber'];
    $_SESSION["constituencyName"] = $consadmin['constituencyName'];
 
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
    exit();
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Constituencies Admin Panel</title>
    <link rel="stylesheet" href="adminstyle.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.css">
</head>
<body>
    <section>
        <H1 style="font-size:40px;margin-top:0%;">Constituencies Admin Welcome</h1>
        <div style="font-size:20px;margin-left:90%;margin-top:-1%"><p> <?php echo $_SESSION["constituencyName"]; ?></p><br><br></div>
    </section>
    <div class="side-menu">
        <div class="Cdfportal" style="margin-left: 1%; margin-top:2%;">
            <h1>Cdf Portal Constituency <br>Admins</h1> 
            
            </div>
           
        <ul style="margin-top: 30%;">
           <li><h3> CONSITUENCY NUMBER:<?php echo $_SESSION["constituencyNumber"]; ?></h3></li>
            <li><a href="projects.php">PROJECTS</a></li>
            <li><a href="bursaries.php">BURSARIES</a></li>
            <li><a href="tenders.php">TENDERS</a></li>
            <li><a href="jobs.php">JOBS</a></li>
            <li><a href="notice.php">NOTICES</a></li>
            <li><a href="logout.php">LOG OUT</a></li>
            <li><a href="addjob.php">ADD JOBS</a></li>
            <li><a href="help.php">HELP</a></li>
              
        </ul>
    </div>
    
    <div class="show">
        <div class="headings">
        
        </div>
    </div>
   
    <div class="new-section" style="display:fixed;">
        <div class="grid-item" style="margin-top:-50%;">
            <h1><a href="accounts.php">REGISTERED-ACCOUNTS</a></h1>
            <img src="images3\user.png" class="img">
        </div> 
        <div class="grid-item" style="margin-top:-50%;">
            <h1><a href="admin.php">ADMIN ACCOUNTS</a></h1>
            <img src="images3\user.png" class="img">
        </div>  
        <div class="grid-item" style="margin-top:-50%;">
            <h1><a href="consfrozen.php">FROZEN ACCOUNTS</a></h1>
            <img src="images3\user.png" class="img">
        </div>      
    </div>

    <script>
        function displayAccounts() {
            // Get the container of the account items
            var accountsContainer = document.querySelector('.new-section');
            
            // Toggle between block and grid display
            if (accountsContainer.style.display === 'block') {
                accountsContainer.style.display = 'grid';
            } else {
                accountsContainer.style.display = 'block';
            }
            
            // Scroll to the new section for better user experience
            accountsContainer.scrollIntoView({ behavior: 'smooth' });
        }
    </script>
</body>
</html>
