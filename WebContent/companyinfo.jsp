<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="lib/bootstrap.min.css" >
<script src="lib/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"></script>

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
<body  style="background-image:url(img/tt.jpg);">
<div class="container-fluid">
<div class="row">

<div class="col-sm-3"><h2 style="color: #fff;">PLACEMENT TRACK</h2>
</div>
<div class="col-sm-1">

</div>
<div class="col-sm-8">
<h3>
   <a href="recruitment.jsp" target="myframe2">Recruitment |</a>
     <a href="Stu_Recruitment.jsp" target="myframe2">Students |</a>
     <a href="taskresult.jsp" target="myframe2">Taskresult |</a>
     <a href="selected.jsp" target="myframe2">Selected stud |</a>
     <a href="changepassword.jsp" target="myframe2">Changepassword |</a>
     <a href="logout.jsp">Logout</a>
    
     </h3>
</div>
</div>

<div class="col-sm-1"><br></div>
<div class="col-sm-10">
<iframe name="myframe2" style="border:2px solid #b2beb5;width:100%;height:550px;"></iframe>
</div>
<div class="col-sm-1"><br></div>
</div>
</body>
</html>