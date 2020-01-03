<?php
//action.php
if(isset($_POST["action"]))
{
 $connect = mysqli_connect("localhost", "root", "", "login");
 if($_POST["action"] == "fetch")
 {
  $query = "SELECT * FROM tbl_images ORDER BY id DESC";
  $result = mysqli_query($connect, $query);
  $output = '
   <table class="table table-bordered table-striped">  
    <tr>
     
     <th width="70%">Image</th>
     
    </tr>
  ';
  while($row = mysqli_fetch_array($result))
  {
   $output .= '

    <tr>
     
     <td>
      <img src="data:image/jpeg;base64,'.base64_encode($row['name'] ).'" height="200" width="200" class="img-thumbnail" />
     </td>
     
    </tr>
   ';
  }
  $output .= '</table>';
  echo $output;
 }
}

 ?>