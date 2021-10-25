<?php 
    $IDNV =$_REQUEST['IDNV'];
    $hoten = $_REQUEST['hoten'];
    $diachi = $_REQUEST['diachi'];
    $IDPB = $_REQUEST['select'];

    //khai báo kết nối
    $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
    //Lựa chọn cơ sở dữ liệu
    mysqli_select_db($link,"nhansu");
 

    $sql="INSERT INTO NHANVIEN (IDNV, hoten, Diachi, IDPB) VALUES ('$IDNV', '$hoten', '$diachi', '$IDPB')";
    if (mysqli_query($link, $sql)) {
        header("Location:ThongtinNVien.php");
    } else {
        header("Location:themnv.php");
    }

    //Giai phong cac ban ghi
    mysqli_free_result($rs);
    mysqli_close($link);
?>