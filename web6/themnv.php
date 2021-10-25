<!DOCTYPE html>
<html lang="en">
  <head>
    <script>
      function checkInfo() {
        var a = document.getElementById("IDNV").value;
        var b = document.getElementById("hoten").value;
        var c = document.getElementById("diachi").value;
        if (a == "" || b == "" || c == "") {
          alert("Mời nhập đủ thông tin!");
        }
      }
    </script>
  </head>
  <body>
    <div class="container">
      <h1>Login</h1>
      <form action="xulythemnv.php" method="POST" name="form1">
        <label>IDNV: </label>
        <input type="text" name="IDNV" id="IDNV" />
        <br />
        <label>Họ Tên: </label>
        <input type="text" name="hoten" id="hoten" />
        <br />
        <label>Địa Chỉ: </label>
        <input type="text" name="diachi" id="diachi" />
        <br />
        <label>IDPB: </label>
        <select name="select">
          <?php
              //khai báo kết nối
              $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
              //Lựa chọn cơ sở dữ liệu
              mysqli_select_db($link,"nhansu");
              $sql ="select * from PHONGBAN";
              $rs= mysqli_query($link,$sql);
              while($row=mysqli_fetch_array($rs)){
                echo '<option value="'.$row["IDPB"].'">'.$row["TenPB"].'</option>';
              }  
          ?>
        </select>

        <br />
        <input type="submit" value="OK" onclick="checkInfo()" />
        <input type="reset" id="reset" />
        <br />
      </form>
    </div>
  </body>

  <style>
    body {
      background-color: rgb(200, 181, 229);
      color: rgb(58, 22, 86);
      font-family: Arial, Helvetica, sans-serif;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      margin: 0;
    }
    .container {
      background-color: white;
      border: 2px solid rgb(58, 22, 86);
      border-radius: 3px;
      box-shadow: rgb(58, 22, 86) 0px 3px 8px;
      padding: 20px;
      text-align: center;
    }
    input {
      border: 1px solid rgb(58, 22, 86);
      border-radius: 3px;
      padding: 4px;
      margin-top: 10px;
    }
    select {
       border: 1px solid rgb(58, 22, 86);
      border-radius: 3px;
      padding: 4px;
      margin-top: 10px;
    }
    input[type="submit"],
    input[type="reset"] {
      background-color: rgb(58, 22, 86);
      color: white;
      width: 80px;
      margin-top: 20px;
      cursor: pointer;
    }
    input[type="submit"]:hover,
    input[type="reset"]:hover {
      background-color: rgb(152, 91, 198);
    }
  </style>
</html>
