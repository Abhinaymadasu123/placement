<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="desss.css">

</head>
<body style="background-image:url(img/tt.jpg);">

		<form  class="box" action="complogin_action.jsp" method="post" >
				<h2 style="color:white;">Company</h2>
				
				<input type="text" placeholder="company name"  pattern="[A-Z][A-Za-z]{2,}" name="name"  required="required">
				<input type="password" placeholder="password" name="pwd" pattern="[0-9]{2,}"required="required">
				 <input type="submit" name="" value="Login">
				
				</form>

</body>
</html>