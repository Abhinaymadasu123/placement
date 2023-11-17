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
<link rel="shortcut icon" href="images/iconn.png" type="image/x-icon">
<style type="text/css">
a{
text-decoration:none;
color:#fff;
}

a:hover {
  text-decoration: none;
}
a:visited {
  text-decoration: none;
}
</style>
</head>
<body style="background-image:url(img/tt.jpg);"  >
<div class="container-fluid">

<div class="row">

<div class="col-sm-3"><h2 style="color: #fff;">PLACEMENT TRACK</h2>
</div>
<div class="col-sm-6">
<br>
</div>
<div class="col-sm-2">
<h3 >
   
      <a href="aftertpo.jsp">Back</a>
     <a href="tpologout.jsp">Logout</a>
     
</h3>
</div>
<div class="col-sm-1">
<br>
</div>

</div>

		<div class="row" style="padding-top:50px;" >
		
	
		<div class="col-sm-4">
			
			<form action="company_action.jsp" method="post">
				
				<input type="text" placeholder="company name" pattern="[A-Z][A-Za-z]{2,}" name="cname" class="form-control" required><br> 
				<input type="text" placeholder="address" name="adresss" pattern="[a-z][A-Za-z0-9, ]{3,}" class="form-control" required><br>
				<input type="text" placeholder="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control" required><br>
				<input type="text" placeholder="phone" name="phone" pattern="^[7-9][0-9]{9}$" class="form-control" required><br>
				<button class="btn btn-success btn-lg">Add</button><br><br>
				<a href="showcampanies.jsp" target="bb">show companies</a>
		
			</form>
		
			</div>
			<div class="col-sm-6">
			<iframe name="bb"  style="width:100%;height:450px;"></iframe>
			</div>
		</div>
	</div>

</body>
</html>