<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
</head>
<body>
<?php 
	include 'simple_html_dom.php';
	require 'globals.php';
	require_once  'DbConnect.php';
	require 'GetHtml.php';
	$html = new GetHtml();
	$html->getClub("");
	// foreach ($arr as $key => $value) {
	// 	echo $value.'<br>';
	// }
	
?>	
</body>
</html>