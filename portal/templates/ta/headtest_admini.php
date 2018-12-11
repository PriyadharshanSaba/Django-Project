{% block content %}
{% load staticfiles %}

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
		header("location:{{ 'home_ad.php' }}");
}
else {
$_SESSION['message'] = "Username/password combination incorrect";

}
}
?>

{% endblock %}
<!--<script type="text/javascript" language="JavaScript" src="{% static 'js/incorrectUSNPSW_alert.js' %}"></script>-->
