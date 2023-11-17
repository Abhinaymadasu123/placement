<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="lib/bootstrap.min.css" >
<script src="lib/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"></script>
</head>
<body>
<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-4">
<h2 align="center">company details</h2>
<table border="1">
<tr>
<th>Company Id</th>
<th>Company Name</th>
<th>Recruitment Date</th>
<th>Percentage</th>
<th>Jobrole</th>
<th>Package</th>
<th>Student Id</th>
<th>Student Name</th>
<th colspan="2">Action</th>
</tr>
<%
String r=session.getAttribute("mysid").toString();
String rpercentage=null,s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,email=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	Statement st1=con.createStatement();
	ResultSet rs=st.executeQuery("select * from recuritment where id='"+r+"' and status=0");
	while(rs.next())
	{
		 rpercentage=rs.getString("rpercentage");
		 System.out.println(rpercentage);
		 
	     ResultSet rs1=st1.executeQuery("select * from student where percentage='"+rpercentage+"'  ");
		System.out.println(rs1);
		if(rs1.next())
		{
			email=rs1.getString("email");
		}
		s=rs.getString("companyid");
		s1=rs.getString("companyname");
		 s2=rs.getString("recruitmentdate");
		 s3=rs.getString("rpercentage");
		 s4=rs.getString("jobrole");
		 s5=rs.getString("package");
		 s6=rs.getString("id");
		 s7=rs.getString("student_name");
		

		%>
		
		
		<tr>
		<td><%=s%></td>
		<td><%=s1%></td>
		<td><%=s2%></td>
		<td><%=s3%></td>
		<td><%=s4%></td>
		<td><%=s5%></td>
		<td><%=s6%></td>
		<td><%=s7%></td>
		<%
		
		%>
		<td ><a href="SRAccept_action.jsp?companyname=<%=s1%>&recruitmentdate=<%=s2%>&rpercentage=<%=s3%>&id=<%=s6%>&student_name=<%=s7%>&email=<%=email%>"><input type="submit" value="Accept" class="btn btn-success"></a></td><td><a href="SRAccept.jsp"><input type="submit" class="btn btn-danger" value="Reject"></a></td>
	 	</tr>	
		<%
	}
	%>
	</table>
	<%
	con.close();
}



catch(Exception e)
{
e.printStackTrace();
}
%>

</div>




<div class="col-sm-4"></div>


</div>

</body>
</html>