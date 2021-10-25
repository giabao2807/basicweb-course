<!DOCTYPE html>
<html lang="en">
<head>
    <title>ThongtinNV</title>
</head>
<body>
    <?php
    //khai báo kết nối
    $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
    //Lựa chọn cơ sở dữ liệu
    mysqli_select_db($link,"nhansu");
    $sql ="select * from NHANVIEN";
    $rs= mysqli_query($link,$sql);
    echo '<table border="1" width="100%">';
    echo '<caption>Du lieu truy xuat tu bang NHANVIEN </caption>';
    //in Tieu de cua bang
    echo '<TR><TH>IDNV</TH><TH>Ho Ten</TH><TH>Diachi</TH><TH>IDPB</TH></TR>';
    while($row=mysqli_fetch_array($rs)){
        echo '<Tr><TD>'.$row["IDNV"].'</TD><TD>'.$row["hoten"].'</TD><TD>'.$row["Diachi"].'</TD><TD>'.$row["IDPB"].'</TD></Tr>';
      }
    echo '</table>';
    //Giai phong cac ban ghi
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