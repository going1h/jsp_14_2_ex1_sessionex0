<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>sessionget.jsp</title>
<%
/*
cookie get�� ���� ���� jsp
*/
%>
</head>
<body>
	<%
	// session.getAttribute("id");
	Object obj1 = session.getAttribute("id"); // ����� �׸��� ������� (��ü) => id�� value ���� ��ü���·� ��ȯ
	String id = obj1.toString();
	out.println(id+"<br/>");
	
	Object obj2 = session.getAttribute("pw"); // ����� �׸��� ������� (��ü) => pw�� value ���� ��ü���·� ��ȯ
	Integer pw = (Integer)obj2;
	out.println(pw+"<br/>");
	
	out.println("<br/>");
	
	String sName, sValue;
	
	Enumeration enumeration = session.getAttributeNames(); // ���ǳ��� ��� ������ ��ü���·� ��ȯ
	while(enumeration.hasMoreElements()){
		sName = enumeration.nextElement().toString(); // ���� ��ġ �������� �ѱ� // ���ǰ�ü��  name�� sName�� ����
		sValue = session.getAttribute(sName).toString(); //sName�� ���� sValue�� ����
		out.println("sName : " + sName + "<br/>");
		out.println("sValue : " + sValue + "<br/>");
	}
	
	out.println("<br/>");
	
	String sessid = session.getId();
	out.println("session Id : "+sessid+"<br/>");
	
	int sessinterval = session.getMaxInactiveInterval(); // ������ ��ȿ�ð� (�ʴ���)
	out.println("sessinterval : " + sessinterval + "<br/>");
	
	out.println("<br/>");
	
	out.println("***************���ݺ��� ������ �����ϰڽ��ϴ�.****************<br/>");
	
	session.removeAttribute("id");
	
	Enumeration enumeration2 = session.getAttributeNames(); // ���ǳ��� ��� ������ ��ü���·� ��ȯ
	while(enumeration2.hasMoreElements()){
		sName = enumeration2.nextElement().toString(); // ���� ��ġ �������� �ѱ� // ���ǰ�ü��  name�� sName�� ����
		sValue = session.getAttribute(sName).toString(); //sName�� ���� sValue�� ����
		out.println("sName : " + sName + "<br/>");
		out.println("sValue : " + sValue + "<br/>");
	}
	
	session.invalidate(); // void���� ��ȯ���� ���� ������ // ���� ��� ����
	
	if(request.isRequestedSessionIdValid()){
		out.println("������ ���� ����ֽ��ϴ�.<br/>");
	}else {
		out.println("������ ���� �Ǿ����ϴ�.</br>");
	}
	
	%>
</body>
</html>