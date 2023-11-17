<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<form action="taskans_action.jsp" method="post" >
<input type="hidden" name="sid" >
<textarea rows="6" cols="40" placeholder="answer here" name="taskans" required="required"></textarea><br>

<button type="submit" class="btn">submit</button><br>
</form>
</body>
</html>