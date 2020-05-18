<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My first Jsp page</title>
</head>
<body>
<h1>Hello World </h1>

 <body>
 <h3>Enter Your Name please</h3>
    <form action="response.jsp" method="POST">
      <input type="text" id="name" name="name" />
     <br> 
 <h3>Enter a Number please</h3>     
 <input type="text" id="num" name="num" />
 <br>
      <input type="submit" value="Submit" />
    </form>
  </body>

</body>
</html>
