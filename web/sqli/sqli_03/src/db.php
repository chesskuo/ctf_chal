<?php

$host = "db";
$user = "labs";
$passwd = "labs";
$dbname = "labs";

$conn = new mysqli($host, $user, $passwd, $dbname);

if(!$conn) {
	die("Failed to connect MySQL server: " . mysqli_connect_error());
}

?>
