<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="lib/bootstrap.min.css">
<script src="lib/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<div class="container-fluid">
<div class="row">
<h1>Change Password</h1>
<form class="form-horizontal" method="post" action="password_action.jsp">



<div class="row">
<div class="form-group">
<label class="col-sm-2 control-label">New Password:</label>
<div class="col-sm-6">
<input type="password" name="f1" class="form-control" placeholder="New Password">
</div>
</div>
</div>
 <div class="row">
<div class="form-group">
<div class="col-sm-2"></div>
<div class="col-sm-1">
<button type="submit" class="btn btn-success">Change Password</button>
</div>
</div>
 </div>
</form>
</div>
</div>





</body>
</html>