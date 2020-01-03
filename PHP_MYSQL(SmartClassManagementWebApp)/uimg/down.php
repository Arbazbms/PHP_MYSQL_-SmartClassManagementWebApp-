<?php
$link=mysql_connect("localhost","root","","login");
if(!$link)
{
	die("could not connect:".mysql_error());
}
mysql_select_db("tbl_images",$link);
$que="select name from images where =3";
$ret=mysql_query($que)or die("Invalid query: " . mysql_error());
$returned=mysql_result($ret,0,0);
$file=fopen("downloadedImage.jpeg","w");
fwrite($file,$returned);
?>