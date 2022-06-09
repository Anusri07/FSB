<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dynamically Build Table</title>
</head>
<body>
<table border=2 width="100%">

<% String[] colors={"red","green","blue"};
for(int i=0;i<3;i++)
{
%>
<tr><%--tr isRow --%>
<td><%= i %></td>

<td><%= colors[i]%></td>


</tr>
<%
}
%></table>
</body>
</html>