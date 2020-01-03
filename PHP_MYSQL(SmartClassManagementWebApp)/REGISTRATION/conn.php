<html>
	<body>



<?php
	
	$servername= "localhost";
	$username = "root";
	$password = "";
	$dbname = "login";
	
	$conn=mysqli_connect($servername,$username,$password,$dbname);
	if($conn)
	{		echo "";
	}
	else
	{	
		die("connection_aborted".mysqli_connect_error());
	}

	$Name=$_POST["Name"];
	$Email=$_POST["Email"];
	$Password=$_POST["Password"];
	$ConfirmPassword=$_POST["ConfirmPassword"];

		
	//hello.php
	
	$query = "INSERT INTO login_details VALUES ('$Name','$Email','$Password')";
	$data=mysqli_query($conn,$query);
	if($data){
		echo "SUCCESSFULLY CREATED";
		
		
	}
	else{
		echo "COULD NOT ABLE TO REGISTER PLZ TRY OTHER MAIL-ID(EXISTS)";
	}

	
?>
<br><br>
<a href="http://localhost/arbaz/wellcome.php">go to home page</a>
</body>
</html>