<?php

$file = $_GET['file'];

if(isset($file))
	@include($file);
else
	header('Location: /?file=2333.php');

?>