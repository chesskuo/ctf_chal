<?php

show_source(__FILE__);

require_once("db.php");
require_once("flag.php");

$username = $_GET["username"];
$password = $_GET["password"];

if(!isset($username) || !isset($password))
	die("No inputs");

$sql = "SELECT * from users WHERE (username='" . $username . "') AND (password='" . $password . "')";

if(isset($_GET["debug"]))
	printf("<pre>%s</pre>", $sql);

if(!$res = $conn->query($sql))
	die(mysqli_error($conn));

$row = $res->fetch_assoc();
if($row["username"] == "admin")
	die($flag);
else
	die("Nope");
