<?php
	highlight_file(__FILE__);
	$FROM_INCLUDE = true;
	include("flag.php");

	if(isset($_GET['a']) && isset($_GET['b']))
	{
		$stra = (string)$_GET['a'];
		$strb = (string)$_GET['b'];

		if($stra === $strb)
		{
			$msg = "a can not equal to b!";
		}
		else
		{
			if(md5($stra) == md5($strb))
				$msg = "Flag is here: ".$flag;
			else
				$msg = "NO! NO! NO!";
		}
	}
	echo $msg;
?>