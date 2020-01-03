
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






 
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>
<style>
    body{
        background-color: #6927ff;
    }
.card{
  background-color: #fff;  
}
.row{
    margin-top: 200px;
    margin-left: 200px;
}
</style>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="#">HOME PAGE</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="faq.html">HELP</a>
      </li>
        
    </ul>
  </div>  
</nav>
<br>


<center><h1>WELCOME</h1></center>

<div class="row">
    
    <div class="col-sm-3">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Bookings</h5>
          <p class="card-text">Easiest way to book the classes</p>
          <a href="eventb/index.php" class="btn btn-primary"><span><i class="fas fa-calendar-alt"></i></span>&nbsp;bookings</a>
        </div>
      </div>
    </div>
    <div class="col-sm-3">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Auditorium</h5>
            <p class="card-text">Chemical block</p>
            <a href="auditorium/index.php" class="btn btn-primary"><span><i class="fas fa-calendar-alt"></i></span>&nbsp;bookings</a>
          </div>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">LOGOUT</h5>
            <p class="card-text">Bye</p>
            
            <a href="logout.php?logout" class="btn btn-primary"><span><i class="fas fa-sign-out-alt"></i></span> &nbsp;logout</a>
          </div>
        </div>
      </div>
  </div>


  <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-bottom">
       <p></p>
      </nav>


</body>
</html>


