<%@page import="model.bean.NhanVien"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>ThongtinNV</title>
</head>
<body>
	<form method="post" action="<%=request.getContextPath()%>/DeleteServlet?index=2">
		<table>
			<caption>List Nhan Vien</caption>
			<tr>
				<th>IDNV</th>
				<th>Hoten</th>
				<th>IDPB</th>
				<th>Dia chi</th>
				<th>Xoa</th>
			</tr>
			<%
			List<NhanVien> nvs = (List<NhanVien>) request.getAttribute("nvs");
			for (NhanVien nv : nvs) {
			%>
			<tr>
				<td class='center'><%=nv.getIdnv()%></td>
				<td><%=nv.getHoten()%></td>
				<td><%=nv.getIdpb()%></td>
				<td><%=nv.getDiachi()%></td>
				<TD><input type="checkbox" name="IDNVList"
					value="<%=nv.getIdnv()%>"></TD>
			</tr>
			<%
			}
			%>
		</table>
		<input class="button" type="submit" name="submit" value="Xoa">
		 <a class="button"
			href="javascript:history.back();">Return</a>
	</form>
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