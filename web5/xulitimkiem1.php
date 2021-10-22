<?php 
  $choice = $_REQUEST['select1'];
  $value = $_REQUEST['text1'];
  if($value == "") {
    header("Location:timkiem1.html");
  } else {
    $bienketnoi =mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
    mysqli_select_db($bienketnoi,"nhansu");
    switch($choice){
        case 'IDNV':
            $rs = mysqli_query($bienketnoi,"select * from NHANVIEN where IDNV='$value'");
            break;
        case 'hoten':
            $rs = mysqli_query($bienketnoi,"select * from nhanvien where hoten='$value'");
            break;
        case 'diachi':
            $rs = mysqli_query($bienketnoi,"select * from nhanvien where diachi='$value'");
            break;
        case 'IDPB':
            $rs = mysqli_query($bienketnoi,"select * from nhanvien where IDPB='$value'");
            break;
    }
    if (mysqli_num_rows($rs) == 0)  header("Location:timkiem1.html");
    else {
      echo '<table border="1" width="100%">';
      echo 
        '<tr>
          <th>Ma nhan vien</th>
          <th>Ho ten</th>
          <th>Ma phong ban</th>
          <th>Dia chi</th>
        </tr>';
      while($row=mysqli_fetch_array($rs)) {
        echo '<Tr><TD>'.$row["IDNV"].'</TD><TD>'.$row["hoten"].'</TD><TD>'.$row["IDPB"].'</TD><TD>'.$row["Diachi"].'</TD></Tr>';
      }
      echo '</table>' ;
      echo '<a href="timkiem1.html">Back</a>';
    }
      mysqli_free_result($rs);
      mysqli_close($bienketnoi);
  }
?>