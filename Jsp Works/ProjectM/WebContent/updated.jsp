<%@ page import="java.sql.*" %>

<%
try
{
	Class.forName("com.mysql.jdbc.Driver");  //load driver 
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ProjectM?autoReconnect=true&useSSL=false","root",""); 
	
	if(request.getParameter("btn_update")!=null) //check button click event not null
	{
		 
		
		String Pname_up,Pcat_up;
		int Pquant_up;
		double Pprice_up;
		
		String hide=request.getParameter("txt_hide"); //it is hidden id get for update record
		Pname_up=request.getParameter("Pname");  //txt_name
		Pcat_up=request.getParameter("Pcat"); //txt_owner
		Pquant_up=Integer.parseInt(request.getParameter("Pquant")); //txt_owner
		Pprice_up=Double.parseDouble(request.getParameter("Pprice")); //txt_owner
		PreparedStatement pstmt=null; //create statement  
		
		pstmt=con.prepareStatement("update products set Pname=?, Pcat=?, Pquant=?, Pprice=? where PID=?"); //sql update query 
		pstmt.setString(1,Pname_up);
		pstmt.setString(2,Pcat_up);
		pstmt.setInt(3,Pquant_up);
		pstmt.setDouble(4,Pprice_up);
		pstmt.setString(5,hide);
		pstmt.executeUpdate(); //execute query
		
		con.close(); //connection close
		 response.sendRedirect("update.jsp");
	}	
	
}
catch(Exception e)
{
	out.println(e);
}
%>


		
	
	
<body>

	<div class="main">

	<form method="post" name="myform"  onsubmit="return validate();">
	
		<center>
			<h1>Update Record</h1>
		</center>
		
		<table>	
		   <%
		try
		{
			Class.forName("com.mysql.jdbc.Driver"); //load driver  
		
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ProjectM?autoReconnect=true&useSSL=false","root","");// create connection  
	
			if(request.getParameter("id")!=null) 
			{
				String id=request.getParameter("id");
		
				String PID,Pname,Pcat;
				int Pquant;
				double Pprice;
		
				PreparedStatement pstmt=null; // create statement
				
				pstmt=con.prepareStatement("select * from products where PID=?"); // sql select query
				pstmt.setString(1,id);
				ResultSet rs=pstmt.executeQuery(); // execute query store in resultset object rs.
				
				while(rs.next()) 
				{
						id=rs.getString(1);
						Pname=rs.getString(2);
						Pcat=rs.getString(3);
						Pquant=rs.getInt(4);
						Pprice=rs.getDouble(5);;
			%>
			<tr>
				<td>Product Name</td>
				<td><input type="text" name="Pname" value="<%=Pname%>"></td>
			</tr>
			
			<tr>
				<td>Product Category</td>
				<td><input type="text" name="Pcat" value="<%=Pcat%>"></td>
			</tr>	
<tr>
				<td>Product Quantity</td>
				<td><input type="text" name="Pquant" value="<%=Pquant%>"></td>
			</tr>	
			<tr>
				<td> Price</td>
				<td><input type="text" name="Pprice" value="<%=Pprice%>"></td>
			</tr>
			<tr>
				<td><input type="submit" name="btn_update" value="Update"></td>	
			</tr>
				
				<input type="hidden" name="txt_hide" value="<%=id%>">
		<%
				}
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}
		%>	
		</table>
		
		
		
	</form>

	</div>
	
		

</body>



</html>