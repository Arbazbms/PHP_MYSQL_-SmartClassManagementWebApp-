<?php
require_once('connection.php');
session_start();
if ($_POST['UName'] == "hodcs@gmail.com" && $_POST['Password'] == "cshod") {
    $_SESSION['User']= "hodcs@gmail.com";
    header("location:admin.php");

    # code...
}

else{
    if(isset($_POST['Login']))
    {
       if(empty($_POST['UName']) || empty($_POST['Password']))
       {
            header("location:index.php?Empty= Please Fill in the Blanks");
       }
       else
       {
            $query="select * from login_details where email='".$_POST['UName']."' and password='".$_POST['Password']."'";
            $result=mysqli_query($con,$query);

            if(mysqli_fetch_assoc($result))
            {
                
                $_SESSION['User']=$_POST['UName'];
                header("location:wellcome.php");
            }
            else
            {
                header("location:index.php?Invalid= Please Enter Correct User Name and Password ");
            }
       }
    }
    else
    {
        echo 'Not Working';
    }
}
?>
