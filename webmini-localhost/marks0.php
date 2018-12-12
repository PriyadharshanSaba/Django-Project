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
                <?php
                  while($row = pg_fetch_assoc($result))
                  {
                    echo '
                <tbody class="table-hover">
                    <tr>
                        <td class="text-center">Web Technologies</a></td>
                        <td class="text-center"><a class="mar" id="sub1b" style="color:black"></a>'.$row["s1"].'</td>
                    </tr>
                    <tr>

                        <td class="text-center">Computer Graphics</a></td>
                        <td class="text-center"><a class="mar" id="sub2b" style="color:black">'.$row["s1"].'</a></td>
                    </tr>
                    <tr>

                        <td class="text-center">System Software</a></td>
                        <td class="text-center"><a  class="mar" id="sub3b" style="color:black">'.$row["s1"].'</a></td>
                    </tr>
                    <tr>

                        <td class="text-center">Operating System</a></td>
                        <td class="text-center"><a class="mar" id="sub4b" style="color:black">'.$row["s1"].'</a></td>
                    </tr>
                    <tr>
                        <td class="text-center">Elective I</a></td>
                        <td class="text-center"><a class="mar" id="sub5b" style="color:black" >'.$row["s1"].'</a></td>
                    </tr>
                    <tr>
                        <td class="text-center">Elective II</a></td>
                        <td class="text-center"><a class="mar" id="sub6b" style="color:black" >'.$row["s1"].'</a></td>
                    </tr>
                    <tr>
                        <td class="text-center">SSOS Lab</a></td>
                        <td class="text-center"><a class="mar" id="sub6b" style="color:black" >'.$row["s1"].'</a></td>
                    </tr>
                    <tr>
                        <td class="text-center">CG Lab</a></td>
                        <td class="text-center"><a class="mar" id="sub6b" style="color:black" >'.$row["s1"].'</a></td>
                    </tr>
                </tbody>
            </table>
            ';
            ?>


        <div class="footr">
            <br><br><br>
<!--            <h2 class="greet">"{{ datas }}"</h2>-->
            <br><br>
            <a class="btmbar" href=" {{ 'red.html' }}"> Go Back </a><a class="sep"><b>|</b></a><a class="btmbar" href=" {{ 'headtest.html' }}"> Sign Out</a>
<!--            <a class="footr1"  href=" {{ 'red.html' }}"> Go Back </a><a class="footr1" href=" {{ 'headtest.html' }}"> Sign Out </a>-->
        </div>
</body>
</html>
