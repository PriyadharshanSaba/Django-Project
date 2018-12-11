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
    $ret_name = pg_escape_string($db, $data[0]);
    $beat = pg_escape_string($db, $data[1]);
    $state = pg_escape_string($db, $data[2]);
    $district = pg_escape_string($db, $data[3]);
	$place = pg_escape_string($db, $data[4]);
	$address = pg_escape_string($db, $data[5]);
    $query = "
     UPDATE full_retailers
     SET Retailer_name = '$ret_name',
     Beat = '$beat',
     District = '$district'
	 Place='$place'
	 State='$state'
	 Address='$address'
	 pincode='$pincode'
	 Cnt_per1='$cntper1'
	 Mobile='$mobile'
	 Distributor_name='$distributor'
	 Rclass='$rclass'
     WHERE Retailer_name = '$ret_name'
    ";
	$query1="INSERT INTO full_retailers(Retailer_name,Beat,State,District,Place,Address,pincode,Cnt_per1,Mobile,Distributor_name,Rclass) VALUES('$ret_name','$beat','$state','$district','$place','$address','$pincode','$cntper1','$mobile','$distributor','$rclass')";
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

$query = "SELECT * FROM beats";
$result = pg_query($db, $query);

?>
<div id="contents">
<div id="contentleft">
<h3 style="color:white;text-align:center;">ADD retailers csv</h3>

	   <br />
   <form method="post" enctype='multipart/form-data'>
    <p><label>Please Select File(Only CSV Formate)</label>
    <input type="file" name="product_file" /></p>
    <br />
    <input type="submit" name="upload" class="btn btn-info" value="Upload" />
	<br />
   <?php echo $message; ?>
   </form>

   <br />

</div>

</div>
<div id="footer">
<ul>

</ul>
<br/>
<p>&copy 2018-2019 Sri Krishna Ghee</p>
</div>
</body>
</html>
