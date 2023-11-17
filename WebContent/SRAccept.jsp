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
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-8">
<%
String s1=request.getParameter("companyname");
String s2=request.getParameter("recruitmentdate");
String s5=request.getParameter("rpercentage");
String s3=request.getParameter("id");
String s4=request.getParameter("student_name");
%>
<form action="SRAccept_action.jsp" method="post">
<table border="1">
<tr><th>CompanyName</th><th>Recruitment</th><th>Percentage</th><th>Student Id</th><th>Student Name</th><th>Task</th></tr>
<tr>
<td><input type="text" name="companyname" value="<%=s1 %>"></td>
<td><input type="text" name="recruitmentdate" value="<%=s2 %>"></td>
<td><input type="text" name="rpercentage" value="<%=s3%>"></td>
<td><input type="text" name="id" value="<%=s4 %>"></td>
<td><input type="text" name="student_name" value="<%=s5 %>"></td>

<td><input type="submit" value="Assign Task" class="btn btn-info"></td>
</tr>




</table>




</form>






</div>
<div class="col-sm-2"></div>


</div>

</body>
</html>