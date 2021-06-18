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
	
		//프로잭트 내에 만들어질 폴더를 저장할 이름 변수 선언
		String realfolder="";
		//실제 만들어질 폴더명 설정
		String savefolder = "/upload";
		//한글 설정
		String encType = "euc-kr";
		//저장 될 파일 사이즈 설정
		int maxSize = 1024*1024*5; //5메가
		//파일이 저장될 경로 값을 읽어오는 객체
		ServletContext context = getServletContext();
		realfolder = context.getRealPath(savefolder);
		
		try {
			
			//클라이언트로 부터 넘어온 데이터를 저장해주는 객체 (마지막은 파일 이름 자동 변경)
			MultipartRequest multi = new MultipartRequest(request, realfolder, maxSize, encType, new DefaultFileRenamePolicy());
			
	%>
		당신의 이름은 <%=multi.getParameter("name") %>
		
	<%
		out.println(realfolder);
	
		} catch(Exception e) {
			e.printStackTrace();
		}
	
	%>

</body>
</html>