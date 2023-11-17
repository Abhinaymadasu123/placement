<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE htmll>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="desss.css">

</head>
<body style="background-image:url(img/tt.jpg);">


<form  class="box" action="studlogin_action.jsp" method="post" >
				<h2 style="color:white;">Studenet Login</h2>
				
				<input type="text" placeholder="name" name="name" pattern="[A-Z][A-Za-z]{2,}" required="required">
				<input type="password" placeholder="pasword" name="password" pattern="[0-9]{4}" required="required">
				 <input type="submit" name="" value="Login">
				 <a href="regstud.jsp" style="color:white;">register here</a>
				
				</form>
				</body>
				</html>