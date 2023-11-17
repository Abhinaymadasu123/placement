<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="lib/bootstrap.min.css" >
<script src="lib/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"></script>
</head>
<body>


<div class="container-fluid">
<div class="row">
<div class="col-sm-10">

<h2>company details</h2>
<table class="table table-striped">
<tr>
<th>companyname</th>
<th>recruitment date</th>
<th>vacancy</th>
<th>percentage</th>
<th>jobrole</th>
<th>package</th>
<th>year</th>
<th>Action</th>

</tr>



<%
String  name=null,s=null,s1=null,s2=null,s3=null,s4=null,s5=null,spercentage=null,sid=null,sname=null,semail=null;
try
{
   
	Class.forName("com.mysql.jdbc.Driver");
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	Statement st1=con.createStatement();
	Statement st2=con.createStatement();
	ResultSet rs=st.executeQuery("select * from companyrecruit");
	while(rs.next())
	{
		String cid=rs.getString("cid");
		ResultSet rs1=st1.executeQuery("select * from company where id='"+cid+"' ");
		
		if(rs1.next())
		{
			name=rs1.getString("companyname");
		}
		 s=rs.getString("recruitmentdate");
		 s1=rs.getString("vacancy");
		 s2=rs.getString("percentage");
		 s3=rs.getString("jobrole");
		 s4=rs.getString("package");
		 s5=rs.getString("year");
		%>
		<%
		
		spercentage=request.getParameter("percentage");
ResultSet rs2=st2.executeQuery("select * from student where  percentage>='"+s2+"' ");
		
		while(rs2.next())
		{
			sid=rs2.getString("id");
		//String	sidd=rs2.getInt(sid);
			spercentage=rs2.getString("percentage");
			sname=rs2.getString("sname");
			//semail=rs2.getString("email");
			//System.out.println(semail);
			
			
		}	
		%>
		<tr>
		<td><%=name%></td>
		<td><%=s%></td>
		<td><%=s1%></td>
		<td><%=s2%></td>
		<td><%=s3%></td>
		<td><%=s4%></td>
		<td><%=s5%></td>
		
		<%
		
		%>
		<td><a href="SendRecuritment.jsp?companyname=<%=name %>&recruitmentdate=<%=s%>&percentage=<%=s2 %>&jobrole=<%=s3%>&package=<%=s4%>&cid=<%=rs.getInt("id") %>&id=<%=sid%>&sname=<%=sname%>"><input type="submit" value="Send" class="btn btn-success"></a></td>
	 	</tr>	
		<%
	}
	%>
	</table></div></div></div>
	<%
	con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</body>
</html>