<?php
session_start(); // Start the session

// Check if constituencyNumber is set in the session
if (!isset($_SESSION["constituencyNumber"])) {
    // Redirect to a login page or display an error message
    header('Location: consadmin.php');
    exit(); // Terminate script execution after redirect
}
require('../../fpdf/fpdf.php'); // Include the FPDF library

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

// SQL query to fetch data from users table based on constituencyNumber
$sql = "SELECT * FROM users WHERE constituencyNumber = ?";
$stmt = $mysqli->prepare($sql);
$stmt->bind_param("s", $_SESSION["constituencyNumber"]);
$stmt->execute();
$result = $stmt->get_result();

// Initialize PDF
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',10);

// Add heading
$pdf->Cell(0, 10, 'Registered Accounts', 0, 1, 'C');
$pdf->Ln(10);

// Check if any rows are returned
if ($result->num_rows > 0) {
    // Add table headers
    $pdf->Cell(30, 10, 'First Name', 1, 0, 'C');
    $pdf->Cell(25, 10, 'Last Name', 1, 0, 'C');
    $pdf->Cell(60, 10, 'Email', 1, 0, 'C');
    $pdf->Cell(30, 10, 'ID Number', 1, 0, 'C');
    $pdf->Cell(40, 10, 'Constituency Number', 1, 1, 'C');

    // Output data of each row within the table
    while($row = $result->fetch_assoc()) {
        $pdf->Cell(30, 10, $row["firstname"], 1, 0, 'C');
        $pdf->Cell(25, 10, $row["lastname"], 1, 0, 'C');
        $pdf->Cell(60, 10, $row["email"], 1, 0, 'C');
        $pdf->Cell(30, 10, $row["idnumber"], 1, 0, 'C');
        $pdf->Cell(40, 10, $row["constituencyNumber"], 1, 1, 'C');
    }
} else {
    $pdf->Cell(0, 10, 'No registered accounts found for this constituency.', 0, 1, 'C');
}

// Output PDF content to variable
$pdf_data = $pdf->Output('', 'S');

// End output buffering
ob_end_clean();

// Display PDF content in browser for print preview
echo "<embed src='data:application/pdf;base64," . base64_encode($pdf_data) . "' type='application/pdf' width='100%' height='600px' />";

// Add link for downloading PDF
echo "<a href='data:application/pdf;base64," . base64_encode($pdf_data) . "' download='registered_users.pdf'>Download PDF</a>";
?>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registered Accounts</title>
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