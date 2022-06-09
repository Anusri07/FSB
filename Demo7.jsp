<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!String str; %>
<form method="post">
<input type="text" name="un">
<input type="submit">
<%=str ="Hi"+request.getParameter("un") %><br><br>
Password<input type="password" name="pwd"><br><br>
<%! int week=2;%>
<% 
switch(week){
case 0:
out.print("Sunday");
break;
case 1:
out.print("Monday");
break;
case 2:
out.print("Tuesday");
break;
case 3:
out.print("Wednesday");
break;
case 4:
out.print("Friday");
break;
}
%>
</form>
</body>
</html>