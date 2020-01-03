
<?php
session_start();

if(isset($_SESSION['User']))
{
    
}
else
{
    header("location:index.php");
}

?>




<?php
    
    
    if(isset($_POST["Name"]) && isset($_POST["Email"]) && isset($_POST["Password"]) && isset($_POST["ConfirmPassword"])){
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


		 echo '<script type="text/javascript">';
         echo 'setTimeout(function () { swal("WOW!","Successfully Created!","success");';
         echo '}, 1000);</script>';
		
		
	}
	else{
		 echo '<script type="text/javascript">';
         echo 'setTimeout(function () { swal("Sorry!","Email-Id already Exists, Try with other Email-id!","warning");';
         echo '}, 1000);</script>';
	}

}
?>


<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>Registration</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Classic Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Bootstrap Core CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="css/font-awesome.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<!-- //web-fonts -->
</head>

<body>




	<!--header-->
	<h1>
		<!--<span>C</span>lassic-->
		<span>R</span>egistration
		<span>F</span>orm</h1>
	<!--//header-->
	<!-- content -->
	<div class="main-content-agile">
		<div class="sub-main-w3">
			<form action="" method="post">
				<div class="form-style-agile">
					<label>Your Name</label>
					<div class="pom-agile">
						<input placeholder="Your Name" name="Name" type="text" required="">
						<span class="fa fa-user-o" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-style-agile">
					<label>Email</label>
					<div class="pom-agile">
						<input placeholder="username@gmail.com" name="Email" type="email" required="">
						<span class="fa fa-envelope" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-style-agile">
					<label>Password</label>
					<div class="pom-agile">
						<input placeholder="Password" name="Password" type="password" id="password1" required="">
						<span class="fa fa-key" aria-hidden="true"></span>
					</div>
				</div>
				<div class="form-style-agile">
					<label>Confirm Password</label>
					<div class="pom-agile">
						<input placeholder="Confirm Password" name="ConfirmPassword" type="password" id="password2" required="">
						<span class="fa fa-key" aria-hidden="true"></span>
					</div>
				</div>
				<!--<div class="sub-agile">
					<input type="checkbox" id="brand1" value="">
					<label for="brand1">
						<span></span>I Accept to the Terms & Conditions</label>
				</div>-->
				<div class="clear"></div>
				<input type="submit" value="Register">
			</form>
		</div>
	</div>
	<a href="http://localhost/arbaz/wellcome.php"><button type="button" class="btn btn-info">Home</button></a>
	<!-- //content -->
	<!--footer-->
<!--	<div class="footer">
		<h2>&copy; 2018 Classic Register Form. All rights reserved | Design by
			<a href="http://w3layouts.com">W3layouts</a>
		</h2>
	</div>-->
	<!--//footer-->


	<!-- password-script -->
	<script>
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->

</body>

</html>