<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ���ε� ����</title>
</head>
<body>
	<center>
	<h3>���� ���ε�</h3>
		<form action="FileUploadProc.jsp" method="post" enctype="multipart/form-data">
		<table width="350" border="1">
			<tr height="40">
				<td width="150">�̸�</td>
				<td width="200"><input type="text" name="name"></td>
			</tr>
			<tr height="40">
				<td width="150">���� ����</td>
				<td width="200"><input type="file" name="filedata"></td>
			</tr>
			<tr height="40">
				<td colspan="2" align="center"><input type="submit" value="���ε�"></td>
			</tr>
		</table>
		</form>
	</center>
</body>
</html>