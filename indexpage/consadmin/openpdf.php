<?php
// Specify the path to the file
$name = $_GET['name'];
$filePath = '../uploads/' . $name;

// Check if the file exists
if (file_exists($filePath)) {
    // Determine the file extension
    $extension = strtolower(pathinfo($filePath, PATHINFO_EXTENSION));

    // Set the appropriate content-type header based on the file extension
    switch ($extension) {
        case 'pdf':
            header('Content-Type: application/pdf');
            break;
        case 'doc':
        case 'docx':
            header('Content-Type: application/msword');
            header('Content-Disposition: inline; filename="' . basename($filePath) . '"');
            break;
        case 'xls':
        case 'xlsx':
            header('Content-Type: application/vnd.ms-excel');
            header('Content-Disposition: inline; filename="' . basename($filePath) . '"');
            break;
        case 'txt':
            header('Content-Type: text/plain');
            break;
        default:
            // For unknown file types, set a generic content-type header
            header('Content-Type: application/octet-stream');
    }

    // Set the content-disposition header to inline for non-text files
    if (!in_array($extension, ['txt'])) {
        header('Content-Disposition: inline; filename="' . basename($filePath) . '"');
    }

    header('Content-Length: ' . filesize($filePath));

    // Output the file
    readfile($filePath);
} else {
    // File doesn't exist, handle the error accordingly
    echo "The file does not exist.";
}
?>
