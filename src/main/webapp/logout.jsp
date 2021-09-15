<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>logout.jsp</title>
</head>
<body>
	<% // 특정 값 지우기
	Enumeration enumeration = session.getAttributeNames(); // 세션내의 모든 값들을 객체형태로 반환
	while(enumeration.hasMoreElements()){
		String sName = enumeration.nextElement().toString();
		String sValue = session.getAttribute(sName).toString();
		
		if(sValue.equals("abcde")) session.removeAttribute(sName);
			out.println(sValue + "님 로그아웃되었습니다.");
			session.removeAttribute(sName);
	}
	%>
</body>
</html>