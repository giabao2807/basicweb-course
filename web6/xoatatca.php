<!DOCTYPE html>
<html lang="en">
<head>
    <title>XoaNV</title>
</head>
<body>
    <?php
    $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
    mysqli_select_db($link,"nhansu");
    $sql ="select * from nhanvien";
    $rs= mysqli_query($link,$sql);
    echo '<form method="post" action="xulixoatatca.php">';
    echo '<table border="1" width="100%">';
    echo '<TR><TH>IDNV</TH><TH>Hoten</TH><TH>IDPB</TH><TH>Diachi</TH><TH>Xoa</TH></TR>';
    while($row=mysqli_fetch_array($rs)){
        echo '<Tr>
          <TD>'.$row["IDNV"].'</TD>
          <TD>'.$row["hoten"].'</TD>
          <TD>'.$row["IDPB"].'</TD>
          <TD>'.$row["Diachi"].'</TD>
          <TD><input type="checkbox" name="IDNV[]" value='.$row['IDNV'].'></TD>
        </Tr>';
      }
    echo '</table>';
    echo '<input type="submit" name="submit" value="Xoa">';
    echo '</form>';
    mysqli_free_result($rs);
    mysqli_close($link);
    ?>
</body>
</html>
<style>
    body{
        font-family: "Nunito", sans-serif;
    }
  table, th, td{
        border:1px solid #868585;   
    }
    table{
        border-collapse:collapse;
    }
    table tr:nth-child(odd){
        background-color:#eee;
    }
    table tr:nth-child(even){
        background-color:white;
    }
    table tr:nth-child(1){
        background-color:skyblue;
    }
</style>