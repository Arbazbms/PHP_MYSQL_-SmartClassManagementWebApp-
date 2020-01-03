<?php  
 //select.php  
 $output = '';  
 $connect = mysqli_connect("localhost", "root", "", "crud");  
 if(isset($_POST["action"]))  
 {  
      $procedure = "  
      CREATE PROCEDURE selectUser()  
      BEGIN  
      SELECT * FROM equip ORDER BY id DESC;  
      END;  
      ";  
      if(mysqli_query($connect, "DROP PROCEDURE IF EXISTS selectUser"))  
      {  
           if(mysqli_query($connect, $procedure))  
           {  
                $query = "CALL selectUser()";  
                $result = mysqli_query($connect, $query);  
                $output .= '
                     <table class="table table-bordered">  
                          <tr>  
                               <th width="25%">no_of students</th>  
                               <th width="25%">projector</th>  
                               <th width="25%">Audio</th>
                               <th width="25%">smartboards</th>
                               <th width="25%">A_C</th>
                               <th width="25%">internet facility</th>
                               <th width="15%">Update</th>  
                               <th width="15%">Delete</th>  
                          </tr>  
                ';  
                if(mysqli_num_rows($result) > 0)  
                {  
                     while($row = mysqli_fetch_array($result))  
                     {  
                          $output .= '  
                               <tr>  
                                    <td>'.$row["first_name"].'</td>  
                                    <td>'.$row["last_name"].'</td>  
                                    <td>'.$row["audio"].'</td> 
                                    <td>'.$row["smart_boards"].'</td> 
                                    <td>'.$row["A_C"].'</td> 
                                    <td>'.$row["I_N"].'</td> 
                                    <td><button type="button" name="update" id="'.$row["id"].'" class="update btn btn-success btn-xs">Update</button></td>  
                                    <td><button type="button" name="delete" id="'.$row["id"].'" class="delete btn btn-danger btn-xs">Delete</button></td>  
                               </tr>  
                          ';  
                     }  
                }  
                else  
                {  
                     $output .= '  
                          <tr>  
                               <td colspan="4">Data not Found</td>  
                          </tr>  
                     ';  
                }  
                $output .= '</table>';  
                echo $output;  
           }  
      }  
 }  
 ?>