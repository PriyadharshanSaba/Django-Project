<?php
session_start();
$conn=pg_connect("host=localhost dbname=webmini user=pd password=xxxx");
if(isset($_POST['login']))
{
	$usn = pg_escape_string($conn,$_POST['usn']);
	$sql = "DELETE FROM login WHERE usn=$usn";
	$result = pg_query($conn, $sql);

	$_SESSION['usn'] = $usn;
  $_SESSION['delmessage'] = "Deleted Successfully!";
	header("location:home_ad.php");
}
?>

<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style>
form {
	margin-top:10%;
	 border:2px solid #ff6600;
	width:30%;
}
font {
        font-family: Arial, Helvetica, sans-serif;
        color: #ff6600;
        font-size:25px;
}
input,button {
margin-top:10%;
}
button {
width:20%;
height:40px;
}
#usn {
	width:70%;
	height:40px;
	border:2px solid gray;
}

</style>
</head>
<body style="background-color:#ebebe0">
<center>
<form method="post" action="rem.php">
            <br>
            <input type="text" placeholder="USN" name="usn" id="usn" required class="form-control" />
			</br>
            <button type="submit" class="btn btn-primary" name"login">Delete</button><br><br>

</form>
</center>
</body>
</html>
