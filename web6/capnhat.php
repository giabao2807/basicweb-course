<!DOCTYPE html>
<html lang="en">
<head>
    <title>ThongtinPB</title>
</head>
<body>
    <?php
    //khai báo kết nối
    $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
    //Lựa chọn cơ sở dữ liệu
    mysqli_select_db($link,"nhansu");
    $sql ="select * from PHONGBAN";
    $rs= mysqli_query($link,$sql);
    echo '<table border="1" width="100%">';
    echo '<caption>Du lieu truy xuat tu bang PHONGBAN </caption>';
    //in Tieu de cua bang
    echo '<TR><TH>IDPB</TH><TH>Ten PB</TH><TH>Mota</TH><TH>Cap Nhat</TH></TR>';
    while($row=mysqli_fetch_array($rs)){
        echo '<Tr><TD>'.$row["IDPB"].'</TD><TD>'.$row["TenPB"].'</TD><TD>'.$row["Mota"].'</TD><TD> <a href="form_capnhat.php?IDPB='.$row["IDPB"]
        .'" target ="_self">xxx</a></TD></Tr>';
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