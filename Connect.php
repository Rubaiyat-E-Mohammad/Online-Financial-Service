<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "online financial service";

$conn = new mysqli($servername, $username, $password);

if($conn->connect_error )
{
	die("Connection_failed: " . $conn->connect_error);
}
else
{
	mysqli_select_db($conn, $dbname);
}

?>