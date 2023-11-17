<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="lib/bootstrap.min.css" >
<script src="lib/jquery.min.js"></script>
<script src="lib/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<body style="background-image:url('img/tt.jpg');">
<div class="container-fluid">
<div class="row">
<div class="col-sm-3"><h2 style="color: #fff;">PLACEMENT TRACK</h2>
</div>
<div class="col-sm-1">
<br>
</div>
<div class="col-sm-8">
<h3 >
   <a href="profile.jsp"  target="myframe">Students |</a>
   <a href="company.jsp"  >Company |</a>
      <a href="recriuttable.jsp"  target="myframe">Recruitment |</a>
        <a href="selstud.jsp" target="myframe">Selected Students |</a>
        
     <a href="tpologout.jsp">Logout</a>
     </h3>
</div>
</div>

<div class="row"><br><br><br></div>

<div class="row">
<div class="col-sm-1"><br></div>
<div class="col-sm-10">
<iframe name="myframe" style="border:2px solid #b2beb5;width:100%;height:400px;"></iframe>
</div>
<div class="col-sm-1"><br></div>
</div>
</div>

</body>
</html>