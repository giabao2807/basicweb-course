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
      else if (isset($_GET['mod3'])){
        $modelStudent = new M_Student();
        $studentList = $modelStudent->getAllStudent();
        include_once('../View/deleteStudent.php');
      }
      else if (isset($_GET['mod4'])){
        include_once('../View/searchStudent.html');
      }
      else if (isset($_POST['insert'])){
        $name =$_REQUEST['name'];
        $age = $_REQUEST['age'];
        $university = $_REQUEST['uni'];
        $modelStudent = new M_Student();
        $modelStudent -> addStudent($name,$age,$university);
        header("Location:C_Student.php");
      }  
      else if (isset($_POST['update'])){
        $id = $_REQUEST['id'];
        $name =$_REQUEST['name'];
        $age = $_REQUEST['age'];
        $university = $_REQUEST['uni'];
        $modelStudent = new M_Student();
        $modelStudent -> updateStudent($id,$name,$age,$university);
        header("Location:C_Student.php");
      }
      else if (isset($_GET['upid'])){
        $modelStudent = new M_Student();
        $student = $modelStudent->getStudentDetail($_GET['upid']);
        include_once('../View/updateStudent.php');
      }
      else if (isset($_GET['delid'])){
        $modelStudent = new M_Student();
        $modelStudent -> deleteStudent($_GET['delid']);
        header("Location:C_Student.php");
      }
      else if (isset($_POST['searchStudent'])){
        $choice = $_POST['select1'];
        $value = $_POST['valuetext'];  
        switch($choice){
          case 'id':
            $modelStudent = new M_Student();
            $studentList = $modelStudent->searchStudent($value);
            include_once("../View/StudentList.php");
          case 'name':
            $modelStudent = new M_Student();
            $studentList = $modelStudent->searchStudentByName($value);
            include_once("../View/StudentList.php");
          case 'age':
            $modelStudent = new M_Student();
            $studentList = $modelStudent->searchStudentByAge($value);
            include_once("../View/StudentList.php");
          case 'university':
            $modelStudent = new M_Student();
            $studentList = $modelStudent->searchStudentByUniversity($value);
            include_once("../View/StudentList.php");
        }
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