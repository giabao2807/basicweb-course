<!DOCTYPE html>
<html lang="en">
<head>
    <title>ConnectDB</title>
</head>
<body>
    <?php
    //khai báo kết nối
    $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
    //Lựa chọn cơ sở dữ liệu
    mysqli_select_db($link,"dulieu");
    $sql ="select * from Table1";
    $rs= mysqli_query($link,$sql);
    echo '<table border="1" width="100%">';
    echo '<caption>Du lieu truy xuat tu bang Table1</caption>';
    //in Tieu de cua bang
    echo '<TR><TH>Ma so</TH><TH>Ho Ten</TH><TH>Ngay Sinh</TH><TH>Nghe Nghiep</TH></TR>';
    while($row=mysqli_fetch_array($rs)){
        echo '<Tr><TD>'.$row["maso"].'</TD><TD>'.$row["hoten"].'</TD><TD>'.$row["ngaysinh"].'</TD><TD>'.$row["nghenghiep"].'</TD></Tr>';
      }
    echo '</table>';
    //Giai phong cac ban ghi
    mysqli_free_result($rs);
    mysqli_close($link);
    ?>
</body>
</html>