<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap 4 Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<br><br><br>

<div class="container">
<table class=" table table-dark table-hover">
 <tr>
  <th>UserName</th> 
  <th>Email</th> 
  <th>Password</th>
 </tr>
 <?php
$conn = mysqli_connect("localhost", "root", "", "login");
  // Check connection
  if ($conn->connect_error) {
   die("Connection failed: " . $conn->connect_error);
  } 
  $sql = "SELECT * FROM login_details";
  $result = $conn->query($sql);
  if ($result->num_rows > 0) {
   // output data of each row
   while($row = $result->fetch_assoc()) {
    echo "<tr><td>" . $row["username"]. "</td><td>" . $row["email"] . "</td><td>"
. $row["password"]."</td></tr>";
}
echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>
</table>

</div>

<br><br><br>
</body>
</html>