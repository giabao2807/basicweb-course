<?php
  include_once '../Model/M_Student.php';

  class C_Student {
    public function invoke() {
      if(isset($_GET['stid'])) {
        $modelStudent = new M_Student();
        $student = $modelStudent->getStudentDetail($_GET['stid']);
        include_once('../View/StudentDetail.php');
      }  
      else if (isset($_GET['mod1'])) {
        include_once('../View/insertStudent.html');
      } 
      else if (isset($_GET['mod2'])){
        $modelStudent = new M_Student();
        $studentList = $modelStudent->getAllStudent();
        include_once('../View/ListStudent.php');
      }
      else if (isset($_POST['insert'])){
        $id= $_REQUEST['id'];
        $name =$_REQUEST['name'];
        $age = $_REQUEST['age'];
        $university = $_REQUEST['uni'];
        $modelStudent = new M_Student();
        $modelStudent -> addStudent($id,$name,$age,$university);
        header("Location:C_Student.php");
      } 
      else {
        $modelStudent = new M_Student();
        $studentList = $modelStudent->getAllStudent();
        include_once('../View/StudentList.php');
      } 
    }
  }

  $C_Student = new C_Student();
  $C_Student->invoke();
?>