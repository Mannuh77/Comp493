<?php
require('../../fpdf/fpdf.php');

// Function to add logo and heading
function headerSection($pdf) {
    // Logo
    $pdf->Image('../../indexpage/images/pcdf1.jpg', 50, 10, 10);
    // Heading
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(0, 10, 'Registered Constituency Administrators', -10, -3, 'C');
    $pdf->Ln(10); // Add some space after the heading
}

// Fetch data from the database
$db_username = 'root';
$db_password = '';
$db_name = 'users_register';
$db_host = 'localhost';

$mysqli = new mysqli($db_host, $db_username, $db_password, $db_name);

// Check connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

$sql = "SELECT * FROM consadmin";
$result = $mysqli->query($sql);

if ($result->num_rows > 0) {
    // Create new PDF instance
    $pdf = new FPDF();
    $pdf->AddPage();

    // Call the header section function to add logo and heading
    headerSection($pdf);

    // Set font
    $pdf->SetFont('Arial', 'B', 8);

    // Output table header
    $pdf->Cell(30, 10, 'First Name', 1);
    $pdf->Cell(30, 10, 'Last Name', 1);
    $pdf->Cell(55, 10, 'Email', 1);
    $pdf->Cell(40, 10, 'ID Number', 1);
    $pdf->Cell(35, 10, 'Constituency Number', 1);
    $pdf->Ln();

    // Output data rows
    while ($row = $result->fetch_assoc()) {
        $pdf->Cell(30, 10, $row["firstname"], 1);
        $pdf->Cell(30, 10, $row["lastname"], 1);
        $pdf->Cell(55, 10, $row["email"], 1);
        $pdf->Cell(40, 10, $row["idnumber"], 1);
        $pdf->Cell(35, 10, $row["constituencyNumber"], 1);
        $pdf->Ln();
    }

    // Output PDF content into a buffer
} else {
    echo "No registered admins found.";
}

// Close connection
$mysqli->close();

$pdf_data = $pdf->Output('', 'S');

// End output buffering
ob_end_clean();

// Display PDF content in browser for print preview
echo "<embed src='data:application/pdf;base64," . base64_encode($pdf_data) . "' type='application/pdf' width='100%' height='600px' />";

// Add link for downloading PDF
echo "<a href='data:application/pdf;base64," . base64_encode($pdf_data) . "' download='registered_users.pdf'>Download PDF</a>";
?>
