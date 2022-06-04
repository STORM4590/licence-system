<?php
	
	$servername = "45.14.145.145";
	$username = "id18700182_wrixity";
	$password = "raza#4590@Storm";
	$dbname = "id18700182_wrixityhost";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}

?>