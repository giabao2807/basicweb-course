<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Capnhat</title>
  </head>

  <body>
    <div class="container">
      <h1>Update Student</h1>
      <form action="../Controller/C_Student.php" method="POST" name="form1">
        <label>ID: </label>
        <input type="text" name="id" id="id" value= '<?php echo $student->id ?>' readonly/>
        <br />
        <label>Name: </label>
        <input type="text" name="name" id="name" value= '<?php echo $student->name?>'/>
        <br />
        <label>Age: </label>
        <input type="text" name="age" id="age" value= '<?php echo $student->age ?>'/>
        <br />
        <label>University: </label>
        <input type="text" name="uni" id="uni" value= '<?php echo $student->university ?>'/>
        <br />
        <input type="submit" value="Ok" name="update"/>
        <input type="reset" id="reset" />
        <br />
      </form>
      <a href="javascript:history.back();">Return</a>
    </div>
  </body>
</html>
 <style>
    body {
      color: #253e63;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      margin: 0;
    }

    .container {
    font-family: Arial, Helvetica, sans-serif;
    display: flex;
    flex-direction: column;
    border: 1px solid #253e63;
    border-radius: 4px;
    padding: 20px;
    box-shadow: #253e63 0px 1px 2px 0px, #253e63 0px 1px 3px 1px;
    text-align: center;
  }
  input {
    border: 1px solid #253e63;
    border-radius: 3px;
    padding: 4px;
    margin-top: 10px;
  }
  select {
    border: 1px solid #253e63;
    border-radius: 3px;
    padding: 4px;
    margin-top: 10px;
  }
  input[type="submit"],
  input[type="reset"] {
    color: #253e63;
    width: 100px;
    margin-top: 20px;
    margin-left: 15px;
    cursor: pointer;
  }
  input[type="submit"]:hover,
  input[type="reset"]:hover {
    background-color: #aad4ef;
  }
  a {
    width: 300px;
    color: #253e63;
    text-align: center;
    text-decoration: none;
    border: 1px solid #253e63;
    border-radius: 4px;
    margin-top: 10px;
    margin-bottom: 5px;
    padding: 5px;
  }

  a:hover {
    background-color: #aad4ef;
    box-shadow: #aad4ef 0px 1px 2px 0px, #aad4ef 0px 1px 3px 1px;
  }
  </style>