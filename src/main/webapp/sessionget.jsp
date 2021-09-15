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
cookie get과 같은 개념 jsp
*/
%>
</head>
<body>
	<%
	// session.getAttribute("id");
	Object obj1 = session.getAttribute("id"); // 담아줄 그릇을 만들어줌 (객체) => id의 value 값을 객체형태로 반환
	String id = obj1.toString();
	out.println(id+"<br/>");
	
	Object obj2 = session.getAttribute("pw"); // 담아줄 그릇을 만들어줌 (객체) => pw의 value 값을 객체형태로 반환
	Integer pw = (Integer)obj2;
	out.println(pw+"<br/>");
	
	out.println("<br/>");
	
	String sName, sValue;
	
	Enumeration enumeration = session.getAttributeNames(); // 세션내의 모든 값들을 객체형태로 반환
	while(enumeration.hasMoreElements()){
		sName = enumeration.nextElement().toString(); // 뽑은 위치 다음으로 넘김 // 세션객체의  name을 sName에 저장
		sValue = session.getAttribute(sName).toString(); //sName의 값을 sValue에 저장
		out.println("sName : " + sName + "<br/>");
		out.println("sValue : " + sValue + "<br/>");
	}
	
	out.println("<br/>");
	
	String sessid = session.getId();
	out.println("session Id : "+sessid+"<br/>");
	
	int sessinterval = session.getMaxInactiveInterval(); // 세션의 유효시간 (초단위)
	out.println("sessinterval : " + sessinterval + "<br/>");
	
	out.println("<br/>");
	
	out.println("***************지금부터 세션을 삭제하겠습니다.****************<br/>");
	
	session.removeAttribute("id");
	
	Enumeration enumeration2 = session.getAttributeNames(); // 세션내의 모든 값들을 객체형태로 반환
	while(enumeration2.hasMoreElements()){
		sName = enumeration2.nextElement().toString(); // 뽑은 위치 다음으로 넘김 // 세션객체의  name을 sName에 저장
		sValue = session.getAttribute(sName).toString(); //sName의 값을 sValue에 저장
		out.println("sName : " + sName + "<br/>");
		out.println("sValue : " + sValue + "<br/>");
	}
	
	session.invalidate(); // void같이 반환값이 없음 싹지움 // 세션 모두 삭제
	
	if(request.isRequestedSessionIdValid()){
		out.println("세션이 아직 살아있습니다.<br/>");
	}else {
		out.println("세션이 삭제 되었습니다.</br>");
	}
	
	%>
</body>
</html>