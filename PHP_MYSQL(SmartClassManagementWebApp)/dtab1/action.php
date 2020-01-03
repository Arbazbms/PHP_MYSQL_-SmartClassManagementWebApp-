<?php  
 //s 
 if(isset($_POST["action"]))  
 {  
      $output = '';  
      $connect = mysqli_connect("localhost", "root", "", "crud");  
      if($_POST["action"] =="Add")  
      {  
          $sem_s = mysqli_real_escape_string($connect, $_POST["semester"]); 
           $first_name = mysqli_real_escape_string($connect, $_POST["firstName"]);  
           $last_name = mysqli_real_escape_string($connect, $_POST["lastName"]);  
           $audio = mysqli_real_escape_string($connect, $_POST["audio"]);
           $smart_boards = mysqli_real_escape_string($connect, $_POST["smartboards"]);
           $A_C = mysqli_real_escape_string($connect, $_POST["ac"]);
           $internet_fac = mysqli_real_escape_string($connect, $_POST["internet"]);
           $procedure = "  
                CREATE PROCEDURE insertUser(IN semester varchar(250), firstName varchar(250), lastName varchar(250), audio varchar(250), smartboards varchar(250), ac varchar(250), internet varchar(250))  
                BEGIN  
                INSERT INTO users(sem_s,first_name, last_name, audio,smart_boards,A_C,internet_fac) VALUES (semester,firstName, lastName,audio,smartboards,ac,internet);   
                END;  
           ";  
           if(mysqli_query($connect, "DROP PROCEDURE IF EXISTS insertUser"))  
           {  
                if(mysqli_query($connect, $procedure))  
                {  
                     $query = "CALL insertUser('".$sem_s."','".$first_name."', '".$last_name."', '".$audio."','".$smart_boards."', '".$A_C."',  '".$internet_fac."')";  
                     mysqli_query($connect, $query);  
                         
                     echo 'Data Inserted';  
                }  
           }  
      }  
      if($_POST["action"] == "Edit")  
      {  
          $sem_s = mysqli_real_escape_string($connect, $_POST["semester"]); 
           $first_name = mysqli_real_escape_string($connect, $_POST["firstName"]);  
           $last_name = mysqli_real_escape_string($connect, $_POST["lastName"]);  
           $audio = mysqli_real_escape_string($connect, $_POST["audio"]);
           $smart_boards = mysqli_real_escape_string($connect, $_POST["smartboards"]);
           $A_C = mysqli_real_escape_string($connect, $_POST["ac"]);
           $I_N = mysqli_real_escape_string($connect, $_POST["internet"]);
           $procedure = "  
                CREATE PROCEDURE updateUser(IN user_id int(11),semester varchar(250), firstName varchar(250), lastName varchar(250), audio varchar(250), smartboards varchar(250), ac varchar(250), internet varchar(250))  
                BEGIN   
                UPDATE users SET sem_s = semester,first_name = firstName, last_name = lastName, audio = audio, smart_boards = smartboards , A_C=ac, I_N=internet
                WHERE id = user_id;  
                END;   
           ";  
           if(mysqli_query($connect, "DROP PROCEDURE IF EXISTS updateUser"))  
           {  
                if(mysqli_query($connect, $procedure))  
                {  
                     $query = "CALL updateUser('".$_POST["id"]."', '".$sem_s."', '".$first_name."', '".$last_name."','".$audio."','".$smart_boards."', '".$A_C."', '".$I_N."')";  
                     mysqli_query($connect, $query);  
                     echo 'Data Updated';  
                }  
           }  
      }  
      if($_POST["action"] == "Delete")  
      {  
           $procedure = "  
           CREATE PROCEDURE deleteUser(IN user_id int(11))  
           BEGIN   
           DELETE FROM users WHERE id = user_id;  
           END;  
           ";  
           if(mysqli_query($connect, "DROP PROCEDURE IF EXISTS deleteUser"))  
           {  
                if(mysqli_query($connect, $procedure))  
                {  
                     $query = "CALL deleteUser('".$_POST["id"]."')";  
                     mysqli_query($connect, $query);  
                     echo 'Data Deleted';  
                }  
           }  
      }  
 }  
 ?>