 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("PID");
String driver = "com.mysql.jdbc.Driver";

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<head>
<title>Update</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>


.login-page {
  width: 700px;
  padding: 10% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 700px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
body {
  background: #76b852; /* fallback for old browsers */
  background: -webkit-linear-gradient(right, #76b852, #8DC26F);
  background: -moz-linear-gradient(right, #76b852, #8DC26F);
  background: -o-linear-gradient(right, #76b852, #8DC26F);
  background: linear-gradient(to left, #76b852, #8DC26F);
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;      
}
h3{ font-size:18px;}
h1,h2,h3,h4,h5,h6{ color:#563D64;}


body {margin: 0;}
li {
  border-right: 1px solid #bbb;
}


ul.topnav {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  
  
}

ul.topnav li {float: right;}

ul.topnav li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

ul.topnav li a:hover:not(.active) {background-color: #111;}

ul.topnav li a.active {background-color: #4CAF50;}

ul.topnav li.right {float: left;
font-weight: bold;}

@media screen and (max-width: 600px) {
  ul.topnav li.right, 
  ul.topnav li {float: none;}
}

ul.topnav li a.title {
  font-weight: bold; 
}

@media screen and (max-width: 600px) {
  table.tab,div.login-page,form.login-form{
    width: 100%;
    
  }
 
  
}
tr:nth-child(even){background-color: #f2f2f2}
th{
color:#563D64;
}


a.tableLinksDel{
  background-color: #f44336;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a.tableLinksUp{
  background-color: #43A047;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

</style>

</head>
<body>
<% 
try
{	
	Class.forName("com.mysql.jdbc.Driver");  //load driver 
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ProjectM?autoReconnect=true&useSSL=false","root","");   //create connection 

	if(request.getParameter("delete")!=null)
	{
		String did=request.getParameter("delete");
		
		PreparedStatement pstmt=null; //create statement
		
		pstmt=con.prepareStatement("delete from products where PID=? "); //sql delete query
		pstmt.setString(1,did);
		pstmt.executeUpdate(); //execute query
		
		con.close(); //close connection
	}
}
catch(Exception e)
{
	out.println(e);
}
%>

<ul class="topnav">

   <li ><a class="active" href="logout.jsp">Log Out</a></li>
   <li><a href="searchProduct.jsp">Search Product</a></li>
  <li><a class="active" href="View.jsp">View Product</a></li>
  <li><a  href="AddPro.jsp">Add Products</a></li>
  <li><a  href="home.jsp">Home</a></li>
  <li class="right"><a href="#contact">Enterprise Management System</a></li>
</ul>

<div class="login-page">
  <div class="form">
  <h4>Update Successful</h4>
  <h2>Available Products</h2> 
  <hr>
    <form class="login-form"  >
    
<table border=".5" class="tab"  >
<tr>
<th>Product ID</th>
<th>Product Name</th>
<th>Product Category </th>
<th>Quantity </th>
<th> Price Per Unit  </th>
<th> Action </th>
<th> Action </th>
</tr>
<%
try{
	Connection connection =  DriverManager.getConnection("jdbc:mysql://localhost:3306/ProjectM?autoReconnect=true&useSSL=false","root","");
statement=connection.createStatement();
String sql ="select * from products";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("PID") %></td>
<td><%=resultSet.getString("Pname") %></td>
<td><%=resultSet.getString("Pcat") %></td>
<td><%=resultSet.getInt("Pquant") %></td>
<td><%=resultSet.getDouble("Pprice") %></td>
<td><a class="tableLinksUp" href="updated.jsp?id=<%=resultSet.getString("PID")%>"> Update</a></td>
<td><a class="tableLinksDel" href="?delete=<%=resultSet.getString("PID")%>">Delete</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
   </form>    
  </div>
</div>
</body>
</html> 