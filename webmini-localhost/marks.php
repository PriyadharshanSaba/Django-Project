<?php
session_start();
$conn=pg_connect("host=localhost dbname=webmini user=pd password=xxxx");
$usn=$_SESSION['usn'];
$sql = "SELECT * FROM internals WHERE usn='$usn'";
$result = pg_query($conn, $sql);
?>
<html>
<head>
      <title>Marks</title>
      <meta charset="utf-8" />
      <link rel="stylesheet" type="text/css" href="static/css/putmar.css">
      <meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
</head>

<body style="background-color:#2b2b2b;" onload="draw()">
        <div class="se-pre-con"></div>
        <h1> &emsp;</h1>
        <div class="table-title">
            <h3>Marks</h3>
            <br>
        </div>
        <div>
            <table class="table-fill" id="myTable">
                <thead>
                    <tr>
                        <!--- <th class="text-center"><b>Code<b></th> -->
                        <th class="text-center"><b>Subject<b></th>
                        <th class="text-center"><b>Internal Marks<b></th>
                    </tr>
                </thead>
                <tbody class="table-hover">
                  <?php
                    while($row = pg_fetch_assoc($result))
                    {
                      echo '
                    <tr>
                        <td class="text-center">Web Technologies</a></td>
                        <td class="text-center"><a class="mar" id="sub1b" style="color:black"></a>'.$row["s1"].'</td>
                    </tr>
                    <tr>

                        <td class="text-center">Computer Architechture</a></td>
                        <td class="text-center"><a class="mar" id="sub2b" style="color:black">'.$row["s2"].'</a></td>
                    </tr>
                    <tr>

                        <td class="text-center">Machine Learning</a></td>
                        <td class="text-center"><a  class="mar" id="sub3b" style="color:black">'.$row["s3"].'</a></td>
                    </tr>
                    <tr>

                        <td class="text-center">Elective I</a></td>
                        <td class="text-center"><a class="mar" id="sub4b" style="color:black">'.$row["s4"].'</a></td>
                    </tr>
                    <tr>
                        <td class="text-center">Elective II</a></td>
                        <td class="text-center"><a class="mar" id="sub5b" style="color:black" >'.$row["s5"].'</a></td>
                    </tr>
                    <tr>
                        <td class="text-center">Machine Learning lab</a></td>
                        <td class="text-center"><a class="mar" id="sub6b" style="color:black" >'.$row["l1"].'</a></td>
                    </tr>
                    <tr>
                        <td class="text-center">Web Lab</a></td>
                        <td class="text-center"><a class="mar" id="sub6b" style="color:black" >'.$row["l2"].'</a></td>
                    </tr>
                    ';
                  }
                    ?>
                </tbody>
            </table>


        <div class="footr">
            <br><br><br>
            <br><br>
            <a class="btmbar" href="home_ad.php"> Go Back </a>
        </div>
</body>
</html>
