<?php
session_start();
$conn=pg_connect("host=localhost dbname=webmini user=pd password=xxxx");
if(isset($_POST['login'])) {
	$usn = pg_escape_string($conn,$_POST['usn']);
	$gen = pg_escape_string($conn,$_POST['gen']);
	$sql = "SELECT * FROM internals WHERE usn='$usn'";
	$sql1 = "SELECT * FROM attends WHERE usn='$usn'";
	$result = pg_query($conn, $sql);
	$result1 = pg_query($conn, $sql1);
	if (pg_num_rows($result) == 1 and $gen=="marks") {
		$_SESSION['message'] = "You are now logged in";
		$_SESSION['usn'] = $usn;
		header("location:marks.php");
}
else if (pg_num_rows($result1) == 1 and $gen=="attend") {
		$_SESSION['message'] = "You are now logged in";
		$_SESSION['usn'] = $usn;
		header("location:attend.php");
}

}
?>

<html>
<head>
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
<form method="post" action="login.php">
            <br>
            <input type="text" placeholder="USN" name="usn" id="usn" required />
			</br>
            <label class="container">
<input type ="radio" name="gen" checked="checked" value="attend"></input>
<font>ATTENDENCE</font> <br> <input type ="radio" name="gen" value="marks"></input><font>MARKS<font>
</label></br>
            <button type="submit" class="subm" name="login">submit</button><br><br>

</form>
</center>
</body>
</html>
