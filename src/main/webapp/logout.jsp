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
	<% // Ư�� �� �����
	Enumeration enumeration = session.getAttributeNames(); // ���ǳ��� ��� ������ ��ü���·� ��ȯ
	while(enumeration.hasMoreElements()){
		String sName = enumeration.nextElement().toString();
		String sValue = session.getAttribute(sName).toString();
		
		if(sValue.equals("abcde")) session.removeAttribute(sName);
			out.println(sValue + "�� �α׾ƿ��Ǿ����ϴ�.");
			session.removeAttribute(sName);
	}
	%>
</body>
</html>