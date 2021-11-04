<!DOCTYPE html>
<html lang="en">
<head>
    <title>ListStudent</title>
</head>
<body>
    <?php
        for($i=0; $i<sizeof($studentList); $i++) {
        echo '<div class="StudentDetail">';
        echo "<p> ".$studentList[$i]->id.". <a href='?delid=".$studentList[$i]->id."'><b>".$studentList[$i]->name."</b></a> </p>";
        echo "<p>Age: " . $studentList[$i]->age . "</p>";
        echo "<p>University: " . $studentList[$i]->university . "</p>";
        echo '</div>';
        }
    ?>
</body>
</html>
<style>
    body {
        color: #253e63;
        margin: 0;
    }
    .StudentDetail {
      font-family: Arial, Helvetica, sans-serif;
      height: 100px;
      width: 200px;
      border: 1px solid #253e63;
      border-radius: 4px;
      padding: 20px;
      box-shadow: #253e63 0px 1px 2px 0px, #253e63 0px 1px 3px 1px;
      margin: 5px auto 0 auto;
    }
    a{
        text-decoration: none;
        color: #253e63;
    }
</style>