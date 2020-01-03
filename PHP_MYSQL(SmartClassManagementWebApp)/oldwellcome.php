
<?php
session_start();

if(isset($_SESSION['User']))
{
   // echo ' Well Come ' . $_SESSION['User'].'<br/>';
    //echo '<a href="logout.php?logout">Logout</a>';
}
else
{
    header("location:index.php");
}

?>


<html>
<head>
  <meta charset="UTF-8">
	<title>HOME</title>
	<link rel="stylesheet" href="style/index_style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <style>
    body{
      margin:0;
      padding:0px;
	  background-color:#074684;
    }
    .header{
      width:100%;
      padding:30px;
      font-size:40px;
     font-style:Arial;
     background-color:#;

      color:black;
      font-family: verdana;
      height: 20px;
    }
	.contenedor{
		position:relative;
		left:20%;
	}
  .scms{
    
  }
	
  </style>
</head>
<body>
  <div class = "header">
   
 <center><strong><u> Smart Class Management System</u></strong><center>

  </div>



  <div id="titulo">
		<p id="header">WELCOME</p>
		<p id="subheader"></p>
	</div>
	<div class="contenedor" id="uno">
			<a href = "admin.php"><img class="icon" src="pictures/icon1.png">
			<p class="texto">ADMIN</p></a>
	</div>
	
	<div class="contenedor" id="dos">
			<a href = "eventb/index.php">
			<img class="icon" src="pictures/icon2.png">
			<p class="texto">BOOKING</p></a>
		</div>
	


    <div class="contenedor" id="uno">
			<a href = "auditorium/index.php">
			<img class="icon" src="pictures/icon1.png">
			<p class="texto">Auditorium</p></a>
		</div>
	


	
	<div class="contenedor" id="cinco">
			<a href = "logout.php?logout">
			<img class="icon" src="pictures/icon5.png">
			
			<p class="texto">LOGOUT</p>
		</div>
</body>
</html>

<?php
    /*session_start();

    if(isset($_SESSION['User']))
    {

        //echo '<a href="logout.php?logout">Logout</a>';
    }
    else
    {
        header("location:index.php");
    }
*/
?>
