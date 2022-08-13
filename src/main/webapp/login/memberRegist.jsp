<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
   String loginId=(String)session.getAttribute("loginId");  
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%  if(loginId != null){%>
		<a href = "index.jsp">등록완료</a>
	
	<% } %>
</body>
</html>