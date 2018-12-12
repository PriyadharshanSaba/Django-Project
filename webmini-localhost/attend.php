<?php
session_start();
$conn=pg_connect("host=localhost dbname=webmini user=pd password=xxxx");
$usn=$_SESSION['usn'];
$sql = "SELECT * FROM attends WHERE usn='$usn'";
$result = pg_query($conn, $sql);
?>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="static/css/attendance.csS">
  <meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
</head>


<body>
    <div class="se-pre-con"></div>
    <h1> &emsp;</h1>
        <div class="table-title">
            <h3>Attendance</h3>
        </div>
        <div>
        <table class="table-fill">
            <thead>
                <tr>
                    <th class="text-center"><b>Subject<b></th>
                    <th class="text-center"><b>Attendance<b></th>
                </tr>
            </thead>
            <tbody class="table-hover">
              <?php
              while($row = pg_fetch_array($result))
              {
               echo '
                <tr>
                    <td class="text-center">Web Tecnology</td>
                    <td class="text-center">'.ceil($row["s1ca"]*100/$row["s1ch"]).'%</td>
                </tr>
                <tr>
                    <td class="text-center">Computer Architecture</td>
                    <td class="text-center">'.ceil($row["s2ca"]*100/$row["s2ch"]).'%</td>
                </tr>
                <tr>
                    <td class="text-center">Machine Learning</td>
                    <td class="text-center">'.ceil($row["s3ca"]*100/$row["s3ch"]).'%</td>
                </tr>
                <tr>
                    <td class="text-center">Elective I</td>
                    <td class="text-center">'.ceil($row["s4ca"]*100/$row["s4ch"]).'%</td>
                </tr>
                <tr>
                    <td class="text-center">Elective II</td>
                    <td class="text-center">'.ceil($row["s5ca"]*100/$row["s5ch"]).'%</td>
                </tr>
                ';
              }
              ?>
            </tbody>
        </table>
        <center>
          <br><br>
        <a class="footr"  href="home_ad.php"> Go Back </a>
      </center>
    </div>

</body>
</html>
