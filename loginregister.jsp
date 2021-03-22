<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
<%@page import="ah.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br><h1>This is LoginRegister servlet</h1><br>
<%
try{
	ClientDAO cd=new ClientDAOImpl();
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String submitType=request.getParameter("submit");
	Client c=cd.getClient(email, password);
	
	String emailid1=c.getEmailid();
	
	if(submitType.equals("login") && c.getEmailid()!=null && c.getPassword()!=null){
		
		//HttpSession session= request.getSession();
		session.setAttribute("emailid", emailid1);
		
		request.getRequestDispatcher("appointment.jsp").forward(request, response);
	}
	else if(submitType.equals("register")){
		
		c.setEmailid(request.getParameter("emailid"));
		c.setFirstname(request.getParameter("firstname"));
		c.setLastname(request.getParameter("lastname"));
		c.setAge(request.getParameter("age"));
		c.setGender(request.getParameter("gender"));
		c.setPhonenumber(request.getParameter("phonenumber"));
		c.setAddress(request.getParameter("address"));
		c.setPassword(request.getParameter("password"));
		
		
		cd.insertClient(c);
		
		request.setAttribute("successMessage","Registration done,please login to continue..");
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
	else{
		request.setAttribute("Message", "Data not found,Create your Account!!!");
		request.getRequestDispatcher("login.jsp").forward(request,response);
	}
	}
	catch(Exception e){
		System.out.print(e);
	}
%>

</body>
</html>