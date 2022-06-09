<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
<label><b>Registration Form</b></label><br><br>
First Name<input type="text" name="un"><br>
Email ID<input type="text" name="email"><br>
Password<input type="password" name="pwd"><br>
Married<input type="radio" name="married" checked>
Un-Married<input type="radio" name="married"><br><br>
Gender<br>
<input type="radio" name="gender">Male
<input type="radio" name="gender">Female
<input type="radio" name="gender">Others<br><br>
<button type="button" onclick="disp()">Submit</button><br>
<div id="result"></div>
<script>
function disp(){
	var ele=document.getElementByName('gender');
	for(int i=0;i<ele.length;i++){
		if(ele[i].checked)
			document.getElementById("result").innerHTML="Gender:"+ele[i].value;
	}
}
</script><br>
Certified in?<br>
<input type="checkbox" name="c">C & DS<br>
<input type="checkbox" name="c">JAVA<br>
<input type="checkbox" name="c">My SQL<br><br>
<select name="country">
<option value=1>India</option>
<option value=1>USA</option>
<option value=1>Sweden</option>
</select>
</form>
</body>
</html>