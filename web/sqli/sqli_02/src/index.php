<?php

show_source(__FILE__);

require_once("db.php");
require_once("flag.php");

$password = $_GET["password"];

if(!isset($password))
	die("No inputs");

$password = preg_replace('/\ /', '', $password);

$sql = "SELECT * from users WHERE username='admin' AND password='" . $password . "'";

if(isset($_GET["debug"]))
	printf("<pre>%s</pre>", $sql);

if(!$res = $conn->query($sql))
	die(mysqli_error($conn));

$row = $res->fetch_assoc();
if($row["username"] == "admin")
	die($flag);
else
	die("Nope");
