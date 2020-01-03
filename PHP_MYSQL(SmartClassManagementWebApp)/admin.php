<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Admin Page</title>

    <!-- Bootstrap 
    <link href="css/bootstrap.min.css" rel="stylesheet">-->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    body{
        background-color:#ffbe00; 
    }

    .jumbotron{
        background-color:#ffbe00; 
        
    }
    </style>
  </head>
  <body>

      <!--navbar-->
<nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>                        
            </button>
            <a class="navbar-brand" href="#">ADMIN</a>
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
            <li class="active"><a href="wellcome.php">Home</a></li>
              <li class="active"><a href="eventb/index.php">bookings</a></li>
              <li class="active"><a href="auditorium/index.php">Auditorium</a></li>
              
             
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="#"><span class="glyphicon glyphicon-"></span></a></li>
             
            </ul>
          </div>
        </div>
      </nav>

    

            <div class="jumbotron text-center">
    <div class="container-fluid">
       
         <b>  <u> <h1 class="text-primary">Sri Jayachamarajendra (Govt) Polytechnic</h1></u></b>
           <h2>
            </h2> 
        </div>  
    </div>




        <div class="page-header text-center">
            <h1> About</h1>
        </div>


        <div class="container">
      <div class="jumbotron text-center">
    
       
            <h1 class="text-primary">Registeration of an Account</h1>
            <a href="REGISTRATION/index.php"><button type="button" class="btn btn-lg btn-primary">Register&nbsp; <span class="glyphicon glyphicon-arrow-right"></span> </button></a>
           <h2>
            </h2> 
        </div>  
    </div>   


    <div class="container">
        <div class="jumbotron text-center">
      
         
              <h1 class="text-primary">Add / Upadte the Equipments and Facilities </h1>
             <a href="dtab1/index.php"> <button type="button" class="btn btn-lg btn-primary">update/Add&nbsp; <span class="glyphicon glyphicon-pencil"></span> </button></a>
             <h2>
              </h2> 
          </div>  
      </div>   



  <center><h1>Delete the Comments</h1>
      <form>
    <input type="submit" class="btn btn-primary" name="delet" id="delet" value="DELETE WHOLE DATA"/>
</form>
<br>
</center>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
<?php

if(isset($_GET['delet'])){

    $connection = mysqli_connect('localhost', 'root', '', 'login');

    if (mysqli_connect_errno()) {
        printf("Connect failed: %s\n", mysqli_connect_error());
        exit();
    }

    $sql = 'DELETE FROM tbl_comment';

    $sql1=mysqli_query($connection, $sql);

    if ($sql1) {

      echo '<script type="text/javascript"> alert("deleted")</script>';
     

    } else {

      echo '<script type="text/javascript">';
      echo 'setTimeout(function () { swal("Sorry!","not able to delete","warning");';
      echo '}, 1000);</script>';

    }

    $connection->close();
}
?>