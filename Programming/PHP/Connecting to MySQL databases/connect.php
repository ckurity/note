<?php
// Database configuration
$dbHost = 'localhost';   // Change to your MySQL server hostname
$dbUsername = 'app';  // Change to your MySQL username
$dbPassword = 'vulnerablesi';  // Change to your MySQL password
$dbName = 'dvwa';      // Change to your MySQL database name

// Create a database connection
$conn = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected to the database successfully";

// Call the function to establish the database connection
$databaseConnectionMessage = connectToDatabase();

?>