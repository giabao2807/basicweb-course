<?php 
  $user = $_REQUEST['username'];
  $pass = $_REQUEST['password'];
  if($user == "" || $pass == "") {
    header("Location:login.html");
  } else {
    $bienketnoi =mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
    mysqli_select_db($bienketnoi,"nhansu");
    $rs = mysqli_query($bienketnoi,"select * from admin where usename='$user' and password='$pass'");
    if (mysqli_num_rows($rs) == 0)  header("Location:login.html");
    else {
        echo '<script>';
        echo 'document.getElementById("t2").src = "./menulogin.html";';
        echo '</script>';
    }
      mysqli_free_result($rs);
      mysqli_close($bienketnoi);
  }
?>