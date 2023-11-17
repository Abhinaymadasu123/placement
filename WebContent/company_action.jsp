<%@page import="javax.xml.ws.Response"%>
<%@page import="action.Email"%>
<%@page import="java.net.PasswordAuthentication"%>
<%@page import="com.sun.xml.internal.fastinfoset.sax.Properties"%>
<%@page import="java.util.Random"%>
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
String s1=request.getParameter("cname");
String s2=request.getParameter("adresss");
String s3=request.getParameter("email");
String s4=request.getParameter("phone");
Random ran= new Random();
int s9=ran.nextInt(9999)+1000;
try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into company(companyname,addresss,email,mobile,password) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s9+"')");

	
	if(i>0)
	{
		String sub="your usr details";  
	   	   String msg="hi "+s1+"your password here  "+s9+" by this u can login login";
	   	Email.sendMail(sub, msg, s3);
	   
	   	 %>
	   	 <script type="text/javascript">
	   	 
	   	 alert("succes"); 
	   	response.sendRedirect("company.jsp");
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