<?php
require('../../fpdf/fpdf.php');

// Start output buffering
ob_start();

// Database connection details
$db_host = 'localhost';
$db_username = 'root';
$db_password = '';
$db_name = 'users_register';

// Create a new PDF instance
$pdf = new FPDF();
$pdf->AddPage();

// Set font for the document
$pdf->SetFont('Arial', 'B', 12);

// Calculate 10% margin from the top
$top_margin = $pdf->GetPageHeight() * 0.1;

// Add logo to top-left corner with 10% margin
// Adjust logo position (increased top margin by 10)
$pdf->Image('../../indexpage/images/pcdf1.jpg', 10, $top_margin - 20, 20); // Adjust position and size as needed

// Add heading "Registered Users Cdf Mkononi" with underline
$top_margin = $pdf->GetPageHeight() * 0.005;
$pdf->Cell(0, 20, 'Registered Users Cdf Mkononi', 0, 1, 'C');
$pdf->SetLineWidth(0.5); // Set line width for the underline
$pdf->Line(10, $top_margin + 38, 200, $top_margin + 38); // Draw underline

// Set starting point for content after the logo and heading
$pdf->SetY($top_margin + 30);

// Database connection
$mysqli = new mysqli($db_host, $db_username, $db_password, $db_name);
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// SQL query to fetch data from users table
$sql = "SELECT * FROM users";
$result = $mysqli->query($sql);

// Check if any rows are returned
if ($result->num_rows > 0) {
    // Add a header row
    $pdf->Cell(30, 10, 'First Name', 1);
    $pdf->Cell(30, 10, 'Last Name', 1);
    $pdf->Cell(60, 10, 'Email', 1);
    $pdf->Cell(30, 10, 'ID Number', 1);
    $pdf->Cell(45, 10, 'Constituency Number', 1);
    $pdf->Ln();

    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        $pdf->Cell(30, 10, $row['firstname'], 1);
        $pdf->Cell(30, 10, $row['lastname'], 1);
        $pdf->Cell(60, 10, $row['email'], 1);
        $pdf->Cell(30, 10, $row['idnumber'], 1);
        $pdf->Cell(45, 10, $row['constituencyNumber'], 1);
        $pdf->Ln();
    }
} else {
    $pdf->Cell(0, 10, 'No results found', 1, 1, 'C');
}

// Close MySQL connection
$mysqli->close();

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