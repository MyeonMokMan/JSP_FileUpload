<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("euc-kr");
	
		//������Ʈ ���� ������� ������ ������ �̸� ���� ����
		String realfolder="";
		//���� ������� ������ ����
		String savefolder = "/upload";
		//�ѱ� ����
		String encType = "euc-kr";
		//���� �� ���� ������ ����
		int maxSize = 1024*1024*5; //5�ް�
		//������ ����� ��� ���� �о���� ��ü
		ServletContext context = getServletContext();
		realfolder = context.getRealPath(savefolder);
		
		try {
			
			//Ŭ���̾�Ʈ�� ���� �Ѿ�� �����͸� �������ִ� ��ü (�������� ���� �̸� �ڵ� ����)
			MultipartRequest multi = new MultipartRequest(request, realfolder, maxSize, encType, new DefaultFileRenamePolicy());
			
	%>
		����� �̸��� <%=multi.getParameter("name") %>
		
	<%
		out.println(realfolder);
	
		} catch(Exception e) {
			e.printStackTrace();
		}
	
	%>

</body>
</html>