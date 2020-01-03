<?php
 
    $con=mysqli_connect('localhost','root','','login');

    if(!$con)
    {
        die(' Please Check Your Connection'.mysqli_error($con));
    }
?>
    