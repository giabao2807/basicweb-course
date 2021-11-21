<%@page import="model.bean.PhongBan"%>
<%@page import="model.bean.NhanVien"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Thongtin PB</title>
</head>
<body>
	<table>
		<caption>List Phong Ban</caption>
		<tr>
			<th>IDPB</th>
			<th>TenPB</th>
			<th>Mota</th>
			<th>Capnhat</th>
		</tr>
		<%
		List<PhongBan> pbs = (List<PhongBan>)request.getAttribute("pbs");
		for(PhongBan pb : pbs){
		%>
		<tr>
			<td class='center'><%=pb.getIdpb()%></td>
			<td><%=pb.getTenpb()%></td>
			<td><%=pb.getMota() %></td>
			<td><a href="<%=request.getContextPath()%>/OptionalServlet?index=11&idpb=<%=pb.getIdpb()%>" target ="_self">xxx</a></td>
		</tr>
		<%	} %>
	</table>
	 <a class="button" href="javascript:history.back();">Return</a>

</body>
<style>
        body {
            color: #F05E7F;
            font-family: Arial, Helvetica, sans-serif;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
            width:100%;
        }
        form{
         width:100%;
        }
       

        table {
            width: 100%;
        }

        caption {
            font-size: large;
            font-weight: bold;
            margin-bottom: 20px;
        }

        th, td {
            border-bottom: 1px solid #F05E7F;
        }

        th {
            background-color: #FCE1E4;
            padding: 5px;
        }

        td.center {
            text-align: center;
            padding: 5px;
        }

        tr:hover {
            background-color: #FFFFFF;
        }

        a {
            color: #F05E7F;
            text-decoration: none;
        }
		input{
		margin-left:70%;
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
            margin-top: 20px;
            padding: 5px;
        }
  </style>
</html>