<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Driver" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.Class" %>  
<%@page import="java.sql.Statement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>School Registration Form</title>
</head>
<body>
<h1>School Registration Form</h1>
<form action="school_register" method="post">
			<table style="with: 50%">
				<tr>
					<td>School Name</td>
					<td><input type="text" name="first_name" /></td>
				</tr>
				<tr>
					<td>School ID</td>
					<td><input type="text" name="first_name" /></td>
				</tr>
					<tr>
					<td>Password</td>
					<td><input type="password" name="password"/></td>
				</tr>
				<tr>
					<td>Number of Students</td>
					<td><input type="text" name="num_stu" /></td>
				</tr>
				<tr>
					<td>Door Number</td>
					<td><input type="text" name="door_num" /></td>
				</tr>
				<tr>
					<td>District</td>
					<td><input type="text" name="dist" /></td>
				</tr>
				<tr>
				<td>State</td>
				<td>
				<select name="state" id="state" class="form-control">
<option ></option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Puducherry">Puducherry</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Odisha">Odisha</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>
</select>
				</td>	
				</tr>			
				</table>
			<input type="submit" value="Submit" />
		</form>
<%String sn=request.getParameter("sn");
String si=request.getParameter("si");
String p=request.getParameter("p");
int n=request.getParameter("n");
String dn=request.getParameter("dn");
//String d=request.getParameter("d");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/midday_meals", "root", "Ag_112977");
	Statement stmt=conn.createStatement();
	stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery("select doorno,sid,sname,no_of_stu,password from midday_meals");
	String doorno="",sid="",sname="",password="";
	int no_of_stu;
	int flag=0;
	if(sn!=null){
		while(rs.next()){
			doorno=rs.getString("doorno");
			sid=rs.getString("sid");
			sname=rs.getString("sname");
			password=rs.getString("password");
			no_of_stu=rs.getInt("no_of_stu");
			if(sn.equals(sname) && p.equals(password) && si.equals(sid) && n==no_of_stu && dn.equals(doorno)){
				out.print("record found");
				flag=1;
				break;
			}
		}
	}
	if(sn!=null && flag==0){
		out.print("book accno title is incorrect !"+"<a href='login.jsp'>Retry</a>");
	}
	conn.close();
}
catch(SQLException e){
out.println(e);
}
catch(Exception e)
{
out.println(e);
}
%>l
</body>
</html>
