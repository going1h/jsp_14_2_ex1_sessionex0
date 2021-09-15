<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>welcome.jsp</title>
</head>
<body>
	
  <%
/*       Cookie[] ck = request.getCookies();
      for(int i=0; i<ck.length; i++){
         String id = ck[i].getValue();
         if(id.equals("abcde")) out.println(id + "님 로그인에 성공하셨습니다.\n반갑습니다.");
      } */
      
      Enumeration enumeration = session.getAttributeNames(); // 세션안에 있는걸 몽땅 긁어와서 enumeration 객체단위로 넘어옴
      while(enumeration.hasMoreElements()){
    	  String sName = enumeration.nextElement().toString(); // 문자열이 아니여서 toString()을 써주어야 에러가 안뜸
    	  String sValue = session.getAttribute(sName).toString();
    	  
    	  if(sValue.equals("abcde")) out.println(sValue + "님 로그인에 성공하셨습니다. 반갑습니다.");
      }
   %>
   <a href="logout.jsp">로그아웃</a>
</body>
</html>