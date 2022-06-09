<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1">
<title>TestForm</title>
</head>
<body>
<%! String str; %>
<form>
<h1>
<label>Enter a text and click submit</label></h1>
<input type="text" name="un">
<input type="submit" value="Click">
<%=str=request.getParameter("un") %>
</form>
</body>
</html>