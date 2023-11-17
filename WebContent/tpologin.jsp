<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="desss.css">

</head>
<body style="background-image:url(img/tt.jpg);" >

		
			
	
		<form  class="box" action="tpologin_action.jsp" method="post" >
				<h2 style="color:white;">Tpo</h2>
				
				<input type="text" placeholder="name" pattern="[a-z][A-Za-z]{2,}" name="tponame"  required="required">
				<input type="password" placeholder="password" pattern="[A-Za-z0-9]{2,}" name="tpopassword" required="required">
				 <input type="submit" name="" value="Login">
				
				</form>
	

</body>
</html>
