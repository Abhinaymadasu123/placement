<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="lib/bootstrap.min.css" >
<script src="lib/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"></script>

<style>
form {
  border-style: ridge;
  border-width: 7px;
  border-color: #fff;
  padding:15px;
}


</style>
</head>
<body style="background-image:url(img/tt.jpg);">
<div class="container-fluid">
<div class="row"><br><br><br></div>
<div class="row">
<div class="col-sm-4"><br></div>
<div class="col-sm-4">
<div class="signin">
<form action="student_action.jsp" method="post" target="_parent">
<h2 style="color:white;">Student details</h2>
<input type="text" placeholder="name" name="name" pattern="[A-Z][A-Za-z, ]{2,}" required="required" class="form-control"><br>
<input type="text" placeholder="hallticketno" name="hallticket" required="required" class="form-control"><br>
<input type="text" placeholder="mobile" name="mobile" required="required" pattern="^[7-9][0-9]{9}$" class="form-control"><br>
<input type="text" placeholder="email" name="email" required="required" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control"><br>
<input type="text" placeholder="gender" name="gender" required="required" class="form-control"><br>
<input type="text" placeholder="address" name="address" required="required" class="form-control"><br>
<input type="text" placeholder="branch" name="branch" required="required" pattern="[A-Z][A-Za-z,]{2,}" class="form-control"><br>
<input type="text" placeholder="percentage" name="percentage" required="required" class="form-control"><br>
<input type="text" placeholder="year" name="year" required="required" pattern="[0-9]{4}" class="form-control"><br>
<input type="submit" value="Register" class="btn btn-success"><br>
</form>
</div>
</div>
<div class="col-sm-4"><br></div>
</div>
</div>
</body>
</html>