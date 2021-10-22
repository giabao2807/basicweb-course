<?php 
  $manv = $_REQUEST['txtmanv'];
  $hoten = $_REQUEST['txthoten'];
  if($manv == "" || $hoten == "") {
    header("Location:timkiem.html");
  } else {
    $bienketnoi =mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
    mysqli_select_db($bienketnoi,"nhansu");
    $rs = mysqli_query($bienketnoi,"select * from nhanvien where IDNV='$manv' and Hoten='$hoten'");
    if (mysqli_num_rows($rs) == 0)  header("Location:Timkiem.html");
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
      echo '<a href="Timkiem.html">Back</a>';
    }
      mysqli_free_result($rs);
      mysqli_close($bienketnoi);
  }
?>