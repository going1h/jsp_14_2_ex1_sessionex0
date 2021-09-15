<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
	String id,pw;
	%>
	
   <%
      request.setCharacterEncoding("EUC-KR");
      id = request.getParameter("id");
      pw = request.getParameter("pw");
      //아이디와 비밀번호가 맞으면 실행
      if(id.equals("abcde") && pw.equals("12345")){        //id 값을 쿠키로 저장

         session.setAttribute("id", id); // 세션에 id값을 저장
		//session = 내장객체 ->requset로 오면 자동으로 세션객체가 만들어짐 new로 따로 안만들어줘도됨
         response.sendRedirect("welcome.jsp");
      }else {
    	  response.sendRedirect("login.html");
      }
   %>

</body>
</html>