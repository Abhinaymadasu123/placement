<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<div class="col-sm-3">
</div>
<div class="col-sm-6">
<%
String s1=request.getParameter("companyname");
String s2=request.getParameter("recruitmentdate");
String s5=request.getParameter("percentage");
String s3=request.getParameter("jobrole");
String s4=request.getParameter("package");
String s6=request.getParameter("cid");
String s7=request.getParameter("id");
String s8=request.getParameter("sname");
//String s9=request.getParameter("email");
%>



<form action="SendRecuritment_action.jsp" method="post">
<table border="1">
<tr><th>CID</th><th>Company Name</th><th>Date</th><th>Job Role</th><th>Package</th><th>Percentage</th><th>Studetn Id</th><th>Student</th><th>Check</th></tr>
<tr>
<td><input type="text" name="cid" value="<%=s6 %>"></td>
<td><input type="text" name="companyname" value="<%=s1 %>"></td>
<td><input type="text" name="recruitmentdate" value="<%=s2 %>"></td>
<td><input type="text" name="jobrole" value="<%=s3 %>"></td>
<td><input type="text" name="package" value="<%=s4 %>"></td>
<td><input type="text" name="rpercentage" value="<%=s5 %>"></td>
<td><input type="text" name="id" value="<%=s7 %>"></td>
<td><input type="text" name="sname" value="<%=s8 %>"></td>
<td><input type="submit" value="Ok"></td>
</tr>


</table>
</form>


</div>
<div class="col-sm-3">
</div>

</div>
</body>
</html>