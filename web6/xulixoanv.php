<?php
    $IDNV=$_REQUEST['IDNV'];
    //khai báo kết nối
    $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
    //Lựa chọn cơ sở dữ liệu
    mysqli_select_db($link,"nhansu");
    $sql ="delete from NHANVIEN where IDNV='$IDNV';";
    if(mysqli_query($link, $sql)){
        header("Location:xoathongtin.php");
    } else{
        echo "ERROR: Không thể thực thi truy vấn $sql. " . mysqli_error($link);
    }
    //Giai phong cac ban ghi
    mysqli_free_result($rs);
    mysqli_close($link);
?>