<?php
$db=pg_connect("host=localhost dbname=webmini user=pd password=xxxx");

$message = '';
if(isset($_POST["upload"]))
{
 if($_FILES['product_file']['name'])
 {
  $filename = explode(".", $_FILES['product_file']['name']);
  if(end($filename) == "csv")
  {

   $handle = fopen($_FILES['product_file']['tmp_name'], "r");
   while($data = fgetcsv($handle))
   {
    $usn = pg_escape_string($db, $data[0]);
    $name = pg_escape_string($db, $data[1]);
    $im1 = pg_escape_string($db, $data[2]);
    $em1 = pg_escape_string($db, $data[3]);
	  $im2 = pg_escape_string($db, $data[4]);
	  $em2 = pg_escape_string($db, $data[5]);
    $im3 = pg_escape_string($db, $data[6]);
    $em3 = pg_escape_string($db, $data[7]);
    $im4 = pg_escape_string($db, $data[8]);
    $em4 = pg_escape_string($db, $data[9]);
    $im5 = pg_escape_string($db, $data[10]);
    $em5 = pg_escape_string($db, $data[11]);
    $im6 = pg_escape_string($db, $data[12]);
    $em6 = pg_escape_string($db, $data[13]);
    $il1 = pg_escape_string($db, $data[14]);
    $el1 = pg_escape_string($db, $data[15]);
    $il2 = pg_escape_string($db, $data[16]);
    $el2 = pg_escape_string($db, $data[17]);

	$query1="INSERT INTO six_gpa VALUES('$usn','$name','$im1','$em1','$im2','$em2','$im3','$em3','$im4','$em4','$im5','$em5','$im6','$em6','$il1','$el1','$il2','$el2')";
  pg_query($db, $query1);
   }
   fclose($handle);
   header("location: teachers.php?updation=1");
  }
  else
  {
   $message = '<label class="text-danger">Please Select CSV File only</label>';
  }
 }
 else
 {
  $message = '<label class="text-danger">Please Select File</label>';
 }
}

if(isset($_GET["updation"]))
{
 $message = '<label class="text-success">Product Updation Done</label>';
}

?>
<html>
<body >
<div id="contents">
<div id="contentleft">
<h3 style="color:white;text-align:center;"></h3>

	   <br>
     <center>
   <form method="post" enctype='multipart/form-data'>
    <h2><label>Please Select File(Only CSV Format)</label></h2>
    <input type="file" name="product_file" /></p>
    <br />
    <input type="submit" name="upload" class="btn btn-info" value="Upload" />
	<br />
   <?php echo $message; ?>
   </form>
 </center>
   <br />

</div>

</div>
<div id="footer">
<ul>

</ul>

</div>

</body>
</html>
