<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1">
<title>TestForm</title>
</head>
<body>
<%! String str=""; %>
<form method="GET">
<h1>
<label>Enter a text and click submit</label></h1>
<input type="text" name="un">
<input type="submit" value="Click">
<% str=request.getParameter("un");
if(str!=null) out.print("Welcome "+str);%>
</form>
</body>
</html>