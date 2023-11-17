<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("name");
String s2=request.getParameter("hallticket");
String s3=request.getParameter("mobile");
String s4=request.getParameter("email");
String s5=request.getParameter("gender");
String s6=request.getParameter("address");
String s7=request.getParameter("branch");
String s11=request.getParameter("percentage");
String s8=request.getParameter("year");
int s10=0;
Random ran= new Random();
int s9=ran.nextInt(9999)+1000;

try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into student(sname,hallticket,mobile,email,gender,addresss,branch,percentage,year,password,status) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s11+"','"+s8+"','"+s9+"','"+s10+"') ");
	
	if(i>0)
	{
	
		try{
			String SMTP_HOST_NAME = "smtp.gmail.com";
			String SMTP_PORT = "465";
			
			String emailFromAddress = "teamworkproject10@gmail.com"; 
			String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
			
			 boolean debug = true;
			 Properties props = new Properties();
			 props.put("mail.smtp.host", SMTP_HOST_NAME);
			 props.put("mail.smtp.auth", "true");
			 props.put("mail.debug", "true");
			 props.put("mail.smtp.port", SMTP_PORT);
			 props.put("mail.smtp.socketFactory.port", SMTP_PORT);
			 props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
			 props.put("mail.smtp.socketFactory.fallback", "false");
			 
			 javax.mail.Session session1 = javax.mail.Session.getInstance(props,new javax.mail.Authenticator()
			 {
				 protected PasswordAuthentication getPasswordAuthentication(){
					 return new PasswordAuthentication("myprojectstp@gmail.com","paxgxdrhifmqcrzn");
				 }
			 });  
			 session1.setDebug(debug);
			 Message msg = new MimeMessage(session1);
			 InternetAddress addressFrom = new InternetAddress(emailFromAddress);           
			 msg.setFrom(addressFrom);
			 InternetAddress addressTo =new InternetAddress(s4);
			 msg.setRecipient(Message.RecipientType.TO, addressTo);
			 msg.setSubject("Jits College");
			 msg.setContent("Hi "+s1+",\n\nUser Add Successfully!\n\n" + "Ur Password is "+s9+"\n\n", "text/plain");
					 Transport.send(msg);
					 out.println("Check Your Mail");
		}
	
		catch(Exception e){
			out.print(e);
		}		 
	}
	else
	{
		out.println("Connection Error");
	}
	con.close();
			
			
		}
		catch(Exception ae)
		{
			ae.printStackTrace();
		}
		
%>
</body>
</html>