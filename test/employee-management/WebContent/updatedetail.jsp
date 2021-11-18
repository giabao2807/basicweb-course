<%@page import="model.bean.PhongBan"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Capnhat</title>
  </head>

  <body>
  <% PhongBan pb = (PhongBan)request.getAttribute("pb");
  	 %>
    <div class="container">
      <h1>Update PhongBan</h1>
      <form action="<%=request.getContextPath() %>/UpdateServlet"  method="POST" name="form1">
       <label>idpb: </label>
        <input type="text" name="idpb" id="idpb" value= "<%=pb.getIdpb() %>" readonly />
        <br />
        <label>Tenpb: </label>
        <input type="text" name="tenpb" id="tenpb" value= "<%=pb.getTenpb()%>" />
        <br />
        <label>Mota: </label>
        <input type="text" name="mota" id="mota" value= "<%=pb.getMota()%>" />
        <br />
        <input type="submit" value="Ok" name="update"/>
        <input type="reset" id="reset" />
        <br />
      </form>
       <a href="javascript:history.back();">Return</a>
    </div>
  </body>

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
  </html>