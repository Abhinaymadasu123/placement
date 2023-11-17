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
<body  style="background-image:url(img/tt.jpg);">
<div class="row">
<br><br><br><br><br><br>
</div>
<div class="row">
<br>
<div class="signin">
<form action="recurit_action.jsp" method="post" >
<br>

<br><br><br><br><br>
<h2>company</h2>

<input type="date" placeholder="recruitment date" name="f1" required="required" ><br>
<input type="text" placeholder="vacancy" name="f2"  required="required"><br>
<input type="text" placeholder="percentage" name="f3" required="required"><br>
<input type="text" placeholder="job role" name="f4" required="required"><br>
<input type="text" placeholder="package" name="f5" required="required"><br>
<input type="text" placeholder="year" name="f6" pattern="[0-9]{4}" required="required"><br>

<button type="submit" class="btn" style="color:white;">submit</button><br>
</form>
</div>
</div>
</body>
</html>