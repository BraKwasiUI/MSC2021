<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My first Jsp page</title>
</head>
<body>
<%
Connection conn = null; 
try {
Class.forName("com.mysql.jdbc.Driver");
conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/mytest?autoReconnect=true&useSSL=false","root","jp191301");
if (conn!= null){
	out.print("Connected successfully");
}
	}catch(Exception e){
		out.print("Connected not");
	}


 %>


</body>

</body>
</html>


