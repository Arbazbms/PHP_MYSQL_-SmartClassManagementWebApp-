<?php  
 //s 
 $connect = mysqli_connect("localhost","root", "", "crud");  
 if(isset($_POST["id"]))  
 {  
      $output = array();  
      $procedure = "  
      CREATE PROCEDURE whereUser(IN user_id int(11))  
      BEGIN   
      SELECT * FROM users WHERE id = user_id;  
      END;   
      ";  
      if(mysqli_query($connect, "DROP PROCEDURE IF EXISTS whereUser"))  
      {  
           if(mysqli_query($connect, $procedure))  
           {  
                $query = "CALL whereUser(".$_POST["id"].")";  
                $result = mysqli_query($connect, $query);  
                while($row = mysqli_fetch_array($result))  
                {  
                    $output['sem_s'] = $row["sem_s"];  
                     $output['first_name'] = $row["first_name"];  
                     $output['last_name'] = $row["last_name"];  
                     $output['audios'] = $row["audio"]; 
                     $output['smart_boards'] = $row["smart_boards"];
                     $output['A_C'] = $row["A_C"]; 
                     $output['I_N'] = $row["I_N"]; 
                }  
                echo json_encode($output);  
           }  
      }  
 }  
 ?>