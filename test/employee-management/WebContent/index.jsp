

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Gia Bao|Index</title>
  </head>
  <body>
    <iframeset>
      <iframe src="./header.jsp" name="t1" id="t1"></iframe>
      <iframeset>
        <iframe src="./menulogin.jsp" target="t3" name="t2" id="t2"></iframe>
        <iframe src="./main.jsp" target="_self" name="t3" id="t3"></iframe>
        <iframe src="./left.jsp" name="t4" id="t4"></iframe>
      </iframeset>
      <iframe src="./footer.jsp" name="t5" id="t5"></iframe>
    </iframeset>
  </body>
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      margin: 0;
    }
    iframe[name="t1"] {
      height: 150px;
      width: 100%;
      background-color: rgb(193, 231, 246);
    }
    iframe[name="t2"],
    iframe[name="t4"] {
      height: 560px;
      width: 20%;
      background-color: lightblue;
    }
    iframe[name="t3"] {
      height: 560px;
      width: 58%;
      background-color: white;
    }
    iframe[name="t5"] {
      width: 100%;
      height: 60px;
      color: lightgray;
      background-color: rgb(182, 234, 255);
    }
  </style>
</html>
