<?php
session_start();
if(!isset($_SESSION['username'])){
header("location:headtest_admini.php");}

?>
<!DOCTYPE html>
    <head>
        <title>Home</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>

<style>
.welcomeNote{
        font-family: Arial, Helvetica, sans-serif;
        font-size:25px;
}
a.modules{
        text-decoration:none;
        color:#006699;

}
h4.modules {
    font-family: Arial, Helvetica, sans-serif;
}


</style>

<body style="background-color:#ebebe0;">
  <center>
    <br><br><br><br><br><br><br><br>
    <h1 class='welcomeNote'>Welcome, <?php echo $_SESSION['name']; ?><h1><br>
    <!-- <h4 class='modules'><a href="teachers.php" class='modules'>Upload Marks Previous Sem marks </a><h4> -->
    <a href="teachers.php" class="btn btn-info btn-lg" role="button">Upload Marks Previous Sem marks</a><br><br>
    <a href="login.php" class="btn btn-info btn-lg" role="button">View Attendance/Marks</a><br><br>
<!--    <a href="rem.php" class="btn btn-info btn-lg" role="button">Remove Student Record</a> -->
  </center>
</body>
</html>
