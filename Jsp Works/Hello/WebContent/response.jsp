<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Response</title>
</head>
<body>
<h1> Hello World</h1>
<h2>My name is  <%= request.getParameter("name")%> </h2>
 
 <h3>
 <% int num = Integer.parseInt(request.getParameter("num")); %>
 <% if(num ==1){
	 out.print("January");   
 }
 else if (num==2){
	 out.print("Febuary");
 }
 
 %> 
 </h3>
 
 <br>
 
 <h3> Today is:<% out.print(java.util.Calendar.getInstance().getTime()); %></h3> 

</body>
</html>