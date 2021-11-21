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
      <h1 class="title">Update PhongBan</h1>
      <form action="<%=request.getContextPath() %>/UpdateServlet"  method="POST" name="form1">
       <label class="label">idpb: </label>
        <input class="input" type="text" name="idpb" id="idpb" value= "<%=pb.getIdpb() %>" readonly />
        <br />
        <label class="label">Tenpb: </label>
        <input class="input" type="text" name="tenpb" id="tenpb" value= "<%=pb.getTenpb()%>" />
        <br />
        <label class="label">Mota: </label>
        <input class="input" type="text" name="mota" id="mota" value= "<%=pb.getMota()%>" />
        <br />
        <input class="button" type="submit" value="Ok" name="update"/>
        <input class="button" type="reset" id="reset" />
        <br />
      </form>
      <br />
       <a class="button btreturn" href="javascript:history.back();">Return</a>
    </div>
  </body>
  <style>
  body {
    background-color: #FFF3F6;
    color: #F05E7F;
    height: 100vh;
    font-family: Arial, Helvetica, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 0;
  }

  form {
    background-color: #FCE1E4;
    width: 250px;
    text-align: center;
    border: 1px solid #F05E7F;
    border-radius: 4px;
    box-shadow: #FCE1E4 0px 1px 2px 0px, #FCE1E4 0px 1px 3px 1px;
    padding: 20px;
  }

  .title {
    font-weight: bold;
  }

  .label {
    text-align: left;
  }

  .input {
    background-color: transparent;
    color: #6F595B;
    width: 100%;
    outline: none;
    border: none;
    border-bottom: 1px solid #F05E7F;
    padding: 5px;
    margin-bottom: 20px;
  }

  .button-container {
    display: flex;
    justify-content: center;
  }

  .button {
    background-color: #F05E7F;
    color: #FFF3F6;
    font-size: small;
    text-decoration: none;
    border: none;
    border-radius: 4px;
    box-shadow: #FCE1E4 0px 1px 2px 0px, #FCE1E4 0px 1px 3px 1px;
    cursor: pointer;
    margin: auto 2px;
    padding: 5px;
  }
   .btreturn {
  	margin-top: 20px;
  	margin-left:200px;
  }
  </style>
  </html>