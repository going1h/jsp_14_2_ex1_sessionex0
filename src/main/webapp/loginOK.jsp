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
      //���̵�� ��й�ȣ�� ������ ����
      if(id.equals("abcde") && pw.equals("12345")){        //id ���� ��Ű�� ����

         session.setAttribute("id", id); // ���ǿ� id���� ����
		//session = ���尴ü ->requset�� ���� �ڵ����� ���ǰ�ü�� ������� new�� ���� �ȸ�����൵��
         response.sendRedirect("welcome.jsp");
      }else {
    	  response.sendRedirect("login.html");
      }
   %>

</body>
</html>