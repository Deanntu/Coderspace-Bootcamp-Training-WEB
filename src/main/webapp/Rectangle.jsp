<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.deanntu.four.questOne.rectangle.Rectangle" %>
<%
Rectangle rect = new Rectangle();
int height = 0;
int width = 0;
int area = 0;
int perimeter = 0;
String res = "Area" + area + "Perimeter" + perimeter;
if(request.getParameter("calc") != null){
	rect.setHeight(Integer.parseInt(request.getParameter("height")));
	rect.setWidth(Integer.parseInt(request.getParameter("width")));
	area = rect.getArea();
	perimeter = rect.getPerimeter();
	res = "Area: " + area + "\n" + "Perimeter: " + perimeter;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rectangle</title>
</head>
<body>
<form action="Rectangle.jsp" method="POST">
	Height: <input type="text" name="height" value=<%=height%>><br/><br/>
	Width: <input type="text" name="width" value=<%=width%>><br/><br/>
	<input type="submit" value="calculate" name="calc"/>
</form>
<%=res%>
</body>
</html>