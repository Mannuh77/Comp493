<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <link rel="stylesheet" href="adminstyle.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.css">
</head>
<body>
    <section>
    <p class="heading">ADMIN WELCOME</p><br>
    </section>
    <div class="side-menu">
        <div class="Cdfportal" style="margin-left: 3%;">
            <h1>CDF PORTAL</h1>
        </div>
        <ul style="margin-top: 20%;">
             <li><a href="javascript:void(0);" onclick="displayAccounts()">ACCOUNTS</a></li>
             <li><a href="fetchcons.php">CONSTITUENCIES</a></li>
             <li><a href="overall.php">LANDINGPAGE</a></li>
             <li><a href="logs.php">LOGS</a></li>
             <li><a href="help.php">HELP</a></li>
             <li><a href="logout.php">LOGOUT</a></li>

          
          
        </ul>
    </div>
    
    <div class="show">
        <div class="headings">
           
            
            
        </div>
    </div>
   
    <div class="new-section" style="display:flex;margin-top:-15%;">
    <div class="grid-item">
        <h1><a href="registered_accounts.php">REGISTERED-ACCOUNTS</a></h1>
        <img src="images\user.png" class="img">
    </div> 
    <div class="grid-item">
        <h1><a href="fetchadmins.php">ADMIN ACCOUNTS</a></h1>
        <img src="images\user.png" class="img">
    </div>  
    <div class="grid-item">
        <h1><a href="frozen.php">FROZEN ACCOUNTS</a></h1>
        <img src="images\user.png" class="img">
    </div>      
    <div class="grid-item">
    <h1><a href="constituency_admins.php">CONSITUENCY ADMINS</a></h1>
    <img src="images\user.png" class="img">
</div>



</body>
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

</script>
</html>