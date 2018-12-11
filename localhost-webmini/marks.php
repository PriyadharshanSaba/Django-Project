<?php
session_start();
$conn=pg_connect("host=localhost dbname=webmini user=pd password=xxxx");
$usn=$_SESSION['usn'];
$sql = "SELECT * FROM internals WHERE usn='$usn'";
$result = pg_query($conn, $query);
?>
<html>
<head>
</head>
<body>
<table id="myTable">
  <tr>
    <tr><th>S1</th>
    <th>S2</th>
	<th>S3</th>
	<th>S4</th>
	<th>S5</th>
	<th>L1</th>
	<th>L2</th>
  </tr>
   <?php
     while($row = pg_fetch_assoc($result))
     {
      echo '
      <tr>
       <td>'.$row["s1"].'</td>
       <td>'.$row["s2"].'</td>
       <td>'.$row["s3"].'</td>
	   <td>'.$row["s4"].'</td>
	   <td>'.$row["s5"].'</td>
	   <td>'.$row["s6"].'</td>
	   <td>'.$row["s7"].'</td>
      </tr>
      ';
     }
     ?>
</table>
</body>
</html>
