<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="lib/bootstrap.min.css">
<script src="lib/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"></script>
</head>
<body>
<%
String ss=request.getParameter("id");
%>
<h1 style="color:red" align="center">Send Appointment</h1>
<form action="accept1.jsp" method="post" align="center">
<label>Patient Id:<input type="text" name="f1" value=<%=ss %> class="form-control" readonly></label><br>
<label>Set Date:<input type="date" name="f2" class="form-control" required></label><br>
<input type="submit" value="Send" class="btn btn-success">

</form>
</body>
</html>