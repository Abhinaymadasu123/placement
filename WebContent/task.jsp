<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="lib/bootstrap.min.css" >
<script src="lib/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"></script>
</head>
<body>
<div class="row">
<div class="signin">
<%
String s1=request.getParameter("id");
String s2=request.getParameter("student_name");
String s3=request.getParameter("rpercentage");
String s4=request.getParameter("companyname");

%>
<form action="task_action.jsp" method="post" >
<input type="text" value=<%=s1 %> name="id" required="required"><br>
<input type="text" value=<%=s2 %> name="student_name" required="required"><br>
<input type="text" value=<%=s3 %> name="rpercentage" required="required"><br>
<input type="hidden" value=<%=s4%> name="companyname" required="required"><br>

<input type="text" placeholder="TASK" name="task" required="required"><br>


<button type="submit" class="btn btn-success">Submit</button><br>

</form>
</div>
</div>



</body>
</html>