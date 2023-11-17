<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="row">
<div class="col-sm-3"><br></div>
<div class="col-sm-6">
<h2 style="color:white;">Result of your Recruitment</h2>
<table border="1" style="color:white;">
<tr><th>your id</th><th>Company Name</th><th>Address</th><th>Email</th><th>Mobile</th></tr>
<%
String ss=session.getAttribute("mysid").toString();
//String ssc=session.getAttribute("my").toString();
String sid=null,cname=null,ss1=null,ss2=null,ss3=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
Statement st=con.createStatement();
Statement st1=con.createStatement();
ResultSet rs=st.executeQuery("select * from task where sid='"+ss+"' and status=2");

while(rs.next())
{ 
	ss=rs.getString("sid");
	
	cname=rs.getString("cname");
	
	ResultSet rs1=st1.executeQuery("select * from company where companyname='"+cname+"' ");

	if(rs1.next())
	{ 
		ss1=rs1.getString("addresss");
		ss2=rs1.getString("email");
		ss3=rs1.getString("mobile");

}

}
con.close();
}

catch(Exception e)
{
	e.printStackTrace();
}


%>
<tr><td><%=ss %></td><td><%=cname %></td><td><%=ss1 %></td><td><%=ss2 %></td><td><%=ss3 %></td></tr>
</table>
</div>
<div class="col-sm-3"><br></div>
</div>
</body>
</html>