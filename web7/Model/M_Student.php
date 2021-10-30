<?php
  include_once '../Model/E_Student.php';

  class M_Student {
    public function __construct() {}

    public function getAllStudent() {
      $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
      $rs= mysqli_select_db($link,"dulieu");
      $sql="select * from SINHVIEN";
      $result = mysqli_query($link, $sql);
      $i=0;
      
      while($row = mysqli_fetch_array($result)) {
        $id = $row['id'];
        $name = $row['name'];
        $age = $row['age'];
        $university = $row['university'];
        
        while($i!=$id)
          $i++;
        
        $students[$i++] = new E_Student($id, $name, $age, $university);
      }

      return $students;
    }

    public function getStudentDetail($stid) {
      $allStudent = $this->getAllStudent();
      return $allStudent[$stid];
    }
    public function addStudent($id,$name,$age,$university){
      $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
      $rs= mysqli_select_db($link,"dulieu");
      $sql="insert into SINHVIEN values ($id,'$name','$age','$university')";
      $result = mysqli_query($link, $sql);
      mysqli_close($link);
    }
  }
?>