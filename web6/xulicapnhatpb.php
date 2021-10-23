<?php 
    $IDPB=$_REQUEST['IDPB'];
    $tenpb = $_REQUEST['tenpb'];
    $mota = $_REQUEST['mota'];
    $bienketnoi =mysqli_connect("localhost","root","") or die ("Không thể kết nối với CSDL Mysql");
    mysqli_select_db($bienketnoi,"nhansu");
    $sql="UPDATE PHONGBAN SET TenPB='$tenpb' , Mota = '$mota'  WHERE PHONGBAN.IDPB = '$IDPB';";
    if (mysqli_query($bienketnoi, $sql)) {
        header("Location:capnhat.php");
    } else {
    echo "Error updating record: " . mysqli_error($conn);
    }
    mysqli_free_result($rs);
    mysqli_close($bienketnoi);
?>