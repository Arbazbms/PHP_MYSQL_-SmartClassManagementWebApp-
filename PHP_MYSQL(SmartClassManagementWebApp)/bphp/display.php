<!DOCTYPE html>
<html>
<head>
 <title>Table with database</title>
 <style>
  table {
   border-collapse: collapse;
   width: 100%;
   color: #588c7e;
   font-family: monospace;
   font-size: 25px;
   text-align: center;
     } 
  th {
   background-color: #588c7e;
   color: white;
    }
  tr:nth-child(even) {background-color: #f2f2f2}
 </style>
</head>
<body>
 <table>
 <tr>
  <th>semester</th> 
  <th>no_of_students</th> 
  <th>projector</th>
  <th>Audio</th>
  <th>smartboards</th>
  <th>A_C</th>
  <th>internet_facility</th>
 </tr>
 <?php
$conn = mysqli_connect("localhost", "root", "", "crud");
  // Check connection
  if (!$conn) {
   die("Connection failed: " . $conn->connect_error);
  } 
  $sql = "SELECT  sem_s, first_name,last_name,audio,smart_boards,A_C,internet_fac FROM users";
  $result = $conn->query($sql);
  if ($result->num_rows > 0) {
   // output data of each row
   while($row = $result->fetch_assoc()) {
    echo "<tr><td>" . $row["sem_s"]. "</td><td>" . $row["first_name"] . "</td><td>"
. $row["last_name"]. "</td><td>" .$row["audio"]. "</td><td>" .$row["smart_boards"]. "</td><td>" .$row["A_C"]. "</td><td>" .$row["internet_fac"]. "</td></tr>";
}
echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>
</table>
</body>
</html>
