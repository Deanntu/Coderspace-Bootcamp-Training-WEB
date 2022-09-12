<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String username = (String) session.getAttribute("username");
if(username == null) {
	response.sendRedirect("Login.jsp");
}
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
Welcome <%=username %><br>
<a href="Logout.jsp">Logout</a><br>
</body>
</html>