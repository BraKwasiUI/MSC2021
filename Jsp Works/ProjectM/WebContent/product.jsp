<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String id=request.getParameter("PID");
String name=request.getParameter("Pname");
String category=request.getParameter("Pcat");
int quantity=Integer.parseInt(request.getParameter("Pquant"));
double price=Double.parseDouble(request.getParameter("Pprice"));

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/ProjectM?autoReconnect=true&useSSL=false","root","");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into products(PID,Pname,Pcat,Pquant,Pprice)values('"+id+"','"+name+"','"+category+"','"+quantity+"','"+price+"')");
out.println("Data is successfully inserted!");
response.sendRedirect("AddPro.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 


</body>
</html>