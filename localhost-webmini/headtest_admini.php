<?php
session_start();
$conn=pg_connect("host=localhost dbname=webmini user=pd password=xxxx");
if(isset($_POST['login'])) {
	$username = pg_escape_string($conn,$_POST['adminNAME']);
	$password = pg_escape_string($conn,$_POST['adminPSW']);
	$sql = "SELECT * FROM login_teacher WHERE staffid='$username' AND pass='$password'";
	$sql1 = "SELECT name FROM login_teacher WHERE staffid='$username' AND pass='$password'";
	$result = pg_query($conn, $sql);
	$result1 = pg_query($conn, $sql1);
	$row=pg_fetch_assoc($result1);
	$b=$row['name'];
	if (pg_num_rows($result) == 1) {
		$_SESSION['message'] = "You are now logged in";
		$_SESSION['username'] = $username;
		$_SESSION['name']=$b;
		header("location:home_ad.php");
}
else {
$_SESSION['message'] = "Username/password combination incorrect";

}
}
?>
<html lang="en">
    <head>
        <title>Admin</title>
        <meta charset="utf-8" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
                <script src="http://code.jquery.com/jquery-latest.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
                <link rel="stylesheet" type="text/css" href="static/css/headtest_admin.css">
    </head>


<!--    <body class="body" style="background-color:#f6f6f6">-->
<!-- 862,330 =2.61| 688, 250 = 2.7 | 711,260 = 2.7  -->
<!--  1440, 640 = 2.25 | 566,200= 2.83 | 935,380 = 2.46  -->
<body style="background-color:#808080" >
    <script>
            $(document).ready(function () {
                              var logTMargeSet = ($(window).height())/2.6;
                              var logWset= ($(window).width())/2.25;
                              $('.logg').css("margin-top",logTMargeSet+"px")
                              $('.logg').css("margin-left",logWset+"px")
                              });

             $(document).ready(function () {
                           var winHeight = ($(window).height());
                           var winWid= ($(window).width());
                            $('.bbimg').css("width", winWid+"px");
                            $('.bbimg').css("height",winHeight + "px");
                            $('.model').css("width","50 px");
                        });

            </script>
        <div>
            <img src="static/images/loggy_admini.jpg" class="bbimg">

        <div class="logg">
        <div>
        <form method="post" action="headtest_admini.php">
            <br>
            <input type="text" placeholder="Username" name="adminNAME" id="adminNAME" required>
            <input type="password" placeholder="Password" name="adminPSW" required>
            <button type="submit" class="subm" name="login">Login</button><br><br>
            </form>
        </div>


</div>
</body>
</html>

<!--<script type="text/javascript" language="JavaScript" src="{% static 'js/incorrectUSNPSW_alert.js' %}"></script>-->
