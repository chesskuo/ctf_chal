<?php
	highlight_file(__FILE__);
	$FROM_INCLUDE = true;
	include("flag.php");

	if(isset($_GET["a"]) && isset($_GET["b"]))
	{
		$stra = $_GET["a"];
		$strb = $_GET["b"];

		if($stra == $strb)
		{
			$msg = "a can not equal to b!";
		}
		else
		{
			if(strcmp(md5($stra), md5($strb)) == 0)
				$msg = "Flag: ".$flag;
			else
				$msg = "Keep trying!";
		}
	}
	echo $msg;
?>