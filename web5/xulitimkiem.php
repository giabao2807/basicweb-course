<?php
    $IDNV=$_REQUEST['txtmanv'];
    $hoten=$_REQUEST['txthoten'];
    if($manv=="" || $hoten="") {header("Location:timkiem.html");}
    else {
        $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
        //Lựa chọn cơ sở dữ liệu
        mysqli_select_db($link,"nhansu");
        $sql ="select * from NHANVIEN where IDNV='$IDNV' and hoten='$hoten'";
        $rs= mysqli_query($link,$sql);
        if(mysqli_num_rows($rs)==0) header("Location:timkiem.html");
        else{
            echo '<table border="1" width="100%">';
            echo '<caption>Du lieu truy xuat tu bang NHANVIEN </caption>';
            //in Tieu de cua bang
            echo '<TR><TH>IDNV</TH><TH>Ho Ten</TH><TH>Diachi</TH><TH>IDPB</TH></TR>';
            while($row=mysqli_fetch_array($rs)){
                echo '<Tr><TD>'.$row["IDNV"].'</TD><TD>'.$row["hoten"].'</TD><TD>'.$row["Diachi"].'</TD><TD>'.$row["IDPB"].'</TD></Tr>';
              }
            echo '</table>';
        }
        //giai phong bo nho
        mysqli_free_result($rs);
        mysqli_close($link);
    }
?>