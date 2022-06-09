<%@page import="student.School" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="max-width:500px;">
<%!School s=new School(); %>
<table>
<tr class="gradientdown">
<th style="width:40px;"><br></th>
<th style="width:100px;">State and Capital</th>
</tr>
<%!String sAndC; %>
<%
for(int i=0;i<s.school.size();i++){
sAndC=school.getSC(i);%>
<tr class='data'>
<td style="text-align:center;">
<td><%=sAndC %></td>
</tr><%
}
%>
</table>
</div>
</body>
</html>