<%@page import="action.Email"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("sid");
String email=request.getParameter("email");
String name=request.getParameter("student_name");
String msg=null;
//out.println(email);
 
try

{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();

	int i=st.executeUpdate("update task set status=2 where sid='"+s1+"'");
	
	if(i>0)
	{
		String sub="your usr details";  
   	    msg="hii  "+s1+"   and your are selected";
   	   
   	   System.out.println(sub+""+msg+""+email);
   	   Email.sendMail(sub, msg, email);
   	 %>
   	 <script type="text/javascript">
   	 
   	 alert("succes");   	 
   	 </script>
   	
   	
   	 <%
	
			}
	else
	{
		out.println("Connection Error");
	}
	con.close();
			
}
catch(Exception e)
{
	e.printStackTrace();
}
%>





</body>
</html>