<!DOCTYPE html>
<html>
<head>
	<title>sqli 04</title>
</head>
<body>
	<form method="post">
		Username : <input name="username" type="text"><br>
		Password : <input name="password" type="password"><br>
		<input type="hidden" name="debug" value="0"><br>
		<button type="submit">Login</button>
	</form>
<h1>
<?php

require_once("db.php");

$username = $_REQUEST["username"];
$password = $_REQUEST["password"];

if(!empty($username) || !empty($password))
	die("Username or Password cannot be blank !");

$sql = "SELECT * from users WHERE username='" . $username . "' AND password='" . $password . "'";

if($_REQUEST["debug"])
	printf("<pre>%s</pre>", $sql);

if(!$res = $conn->query($sql))
	die(mysqli_error($conn));

$row = $res->fetch_assoc();
if($row['username'] != null)
	die("Your name is {$row['username']}, and your password is {$row['password']}");
else
	die("No Data !");

?>
</h1>

</body>
</html>