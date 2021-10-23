<?php 
    $IDPB=$_GET['IDPB'];

    $bienketnoi =mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
    mysqli_select_db($bienketnoi,"nhansu");
    $rs = mysqli_query($bienketnoi,"select * from PHONGBAN where IDPB='$IDPB'");
    $row=mysqli_fetch_array($rs);
     
    echo '<div class="container">';
    echo '<h1>Cap Nhat Phong ban</h1>';
    echo '<form action="xulicapnhatpb.php?IDPB='.$row["IDPB"].'" method="POST" name="form1">';
    echo '<label>IDPB :</label>';
    echo '<input type="text" name="tenpb" value="'.$row["IDPB"].'" readonly />
          <br/>';
    echo '<label>Ten phong ban:</label>';
    echo '<input type="text" name="tenpb" value="'.$row["TenPB"].'" />
        <br />
        <label>Mo ta</label>
        <input type="text" name="mota" value="'.$row["Mota"].'"./>
        <br />
        <input type="submit" value="OK" onClick="checkInput()" />
        <input type="reset" id="reset" />
        <br />
      </form>';
    echo'</div>';


    echo '
      <style>
    body {
      background-color: lightcoral;
      color: rgb(35, 26, 97);
      font-family: Arial, Helvetica, sans-serif;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      margin: 0;
    }
    .container {
      background-color: white;
      border: 2px solid coral;
      border-radius: 3px;
      box-shadow: coral 0px 3px 8px;
      padding: 20px;
      text-align: center;
    }
    h1{
        color: coral;
    }
    input {
      border: 1px solid coral;
      border-radius: 3px;
      padding: 4px;
      margin-top: 10px;
    }
    input[type="submit"],
    input[type="reset"] {
      background-color: coral;
      color: white;
      width: 80px;
      margin-top: 20px;
      cursor: pointer;
    }
    input[type="submit"]:hover,
    input[type="reset"]:hover {
      background-color: rgb(194, 125, 100);
    }
  </style>
    ';

    mysqli_free_result($rs);
    mysqli_close($bienketnoi);
  
?>