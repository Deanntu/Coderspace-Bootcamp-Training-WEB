<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
int sum = 0;
int left = 0;
int right = 0;
if(request.getParameter("add") != null){
	left = Integer.parseInt(request.getParameter("left"));
	right = Integer.parseInt(request.getParameter("right"));
	sum = left+right;
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Toplam: <%=sum %><br/>
<form action="AdderForm.jsp" method = "POST">
Left: <input type="text" name="left" value=<%=left%>><br/><br/>
Right: <input type="text" name="right" value=<%=right%>><br/><br/>
<input type="submit" value="sum" name="add"/>
</form>
</body>
</html>