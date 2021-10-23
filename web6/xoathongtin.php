<!DOCTYPE html>
<html lang="en">
<head>
    <title>XoaNV</title>
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
    echo '<TR><TH>IDNV</TH><TH>Họ tên</TH><TH>Địa chỉ</TH><TH>IDPB</TH><TH>Xoá nhân viên</TH></TR>';
    while($row=mysqli_fetch_array($rs)){
        echo '<Tr><TD>'.$row["IDNV"].'</TD><TD>'.$row["hoten"].'</TD><TD>'.$row["Diachi"].'</TD><TD>'.$row["IDPB"].'</TD><TD> <a href="xulixoanv.php?IDNV='.$row["IDNV"]
        .'" target ="_self">xxx</a></TD></Tr>';
      }
    echo '</table>';
    //Giai phong cac ban ghi
    mysqli_free_result($rs);
    mysqli_close($link);
    ?>
</body>
</html>