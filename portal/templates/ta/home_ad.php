<?php
session_start();
if(!isset($_SESSION['username'])){
header("location:headtest_admini.php");}
?>
<!DOCTYPE html>
    <head>
        <title>Home</title>
    </head>

<style>
.welcomeNote{
        font-family: Arial, Helvetica, sans-serif;
        color: #ff6600;
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

<body>
    <h2 class='welcomeNote'>Welcome, <?php echo $_SESSION['name']; ?><h2><br>
    <h4 class='modules'><a href="enterMarks.html" class='modules'>Update Marks Mod </a><h4>
</body>
</html>

