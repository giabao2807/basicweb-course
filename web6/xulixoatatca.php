<?php
    //khai báo kết nối
    $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
    //Lựa chọn cơ sở dữ liệu
    $rs = mysqli_select_db($link,"nhansu");

    foreach($_POST['IDNV'] as $id)
    {
        $sql ="delete from NHANVIEN where IDNV='$id';";
        mysqli_query($link, $sql);
    }
    header("Location:xoatatca.php");
    //Giai phong cac ban ghi
    mysqli_free_result($rs);
    mysqli_close($link);
?>