<%@page import="action.Email"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><%
String name=request.getParameter("student_name");
String jk=request.getParameter("email");
String sid=request.getParameter("sid");
String cname=request.getParameter("companyname");

int status=0; 
try

{

 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	int i=st.executeUpdate("update student set status=3 where id='"+sid+"'");
	
 
 
 if(i>0)
	{
		String kk=request.getParameter("student_name");
		String kk1=request.getParameter("companyname");
		String jk1=request.getParameter("email");
		out.println(kk);
		String sub="your usr details";  
   	   String msg="hii  "+name+"   and your are selected for the "+kk1+" company";
   			   System.out.println(msg);
   	   Email.sendMail(sub, msg,jk1);
   	   %>
   	   <% 
   	Statement st1=con.createStatement();
   	int ii=st.executeUpdate("insert into result(sid,companyname,message,status)values('"+sid+",'"+cname+"','"+msg+"','"+status+"') ");
   	if(ii>0)
   	{
   		System.out.println("result inserted successfully");
   	}
   	else
   	{
   		System.out.println("not inserted successfully");
   	}
   	   
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