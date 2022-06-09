<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
int sum(int num1,int num2,int num3){
return num1+num2+num3;
}
%>
<%= "Result is " +sum(10,670,890) %>
</body>
</html>