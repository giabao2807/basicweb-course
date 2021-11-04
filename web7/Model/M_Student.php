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
        $students[$i++] = new E_Student($id, $name, $age, $university);
      }
      return $students;
    }

    public function getStudentDetail($stid) {
      $allStudent = $this->getAllStudent();
      return $allStudent[$stid-1];
    }
    public function addStudent($name,$age,$university){
      $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
      $rs= mysqli_select_db($link,"dulieu");
      $sql="INSERT into sinhvien (name,age,university) VALUES ('$name','$age','$university')";
      $result = mysqli_query($link, $sql);
    }
    public function deleteStudent($id){
      $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
      $rs= mysqli_select_db($link,"dulieu");
      $sql="delete from SINHVIEN where id=$id";
      $result = mysqli_query($link, $sql);
    }
    public function updateStudent($id,$name,$age,$university){
      $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
      $rs= mysqli_select_db($link,"dulieu");
      $sql="UPDATE SINHVIEN SET name='$name', age='$age',university='$university' where id=$id";
      $result = mysqli_query($link, $sql);
    }
    //search student by id
    public function searchStudent($id){
      $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
      $rs= mysqli_select_db($link,"dulieu");
      $sql="select * from SINHVIEN where id=$id";
      $result = mysqli_query($link, $sql);
      $i=0;
      
       while($row = mysqli_fetch_array($result)) {
        $id = $row['id'];
        $name = $row['name'];
        $age = $row['age'];
        $university = $row['university'];
        $students[$i++] = new E_Student($id, $name, $age, $university);
      }
      return $students;
    }
    //search student by name
    public function searchStudentByName($name){
      $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
      $rs= mysqli_select_db($link,"dulieu");
      $sql="select * from SINHVIEN where name like '%$name%'";
      $result = mysqli_query($link, $sql);
      $i=0;
      
      while($row = mysqli_fetch_array($result)) {
        $id = $row['id'];
        $name = $row['name'];
        $age = $row['age'];
        $university = $row['university'];
        $students[$i++] = new E_Student($id, $name, $age, $university);
      }
      return $students;
    }
    //search student by university
    public function searchStudentByUniversity($university){
      $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
      $rs= mysqli_select_db($link,"dulieu");
      $sql="select * from SINHVIEN where university like '%$university%'";
      $result = mysqli_query($link, $sql);
      $i=0;
      
       while($row = mysqli_fetch_array($result)) {
        $id = $row['id'];
        $name = $row['name'];
        $age = $row['age'];
        $university = $row['university'];
        $students[$i++] = new E_Student($id, $name, $age, $university);
      }
      return $students;
    }

    //search student by age
    public function searchStudentByAge($age){
      $link = mysqli_connect("localhost","root","") or die ("Khong thể kết nối với CSDL Mysql");
      $rs= mysqli_select_db($link,"dulieu");
      $sql="select * from SINHVIEN where age like '%$age%'";
      $result = mysqli_query($link, $sql);
      $i=0;
      
       while($row = mysqli_fetch_array($result)) {
        $id = $row['id'];
        $name = $row['name'];
        $age = $row['age'];
        $university = $row['university'];
        $students[$i++] = new E_Student($id, $name, $age, $university);
      }
      return $students;
    }
  }
?>