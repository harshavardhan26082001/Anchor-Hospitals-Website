<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String name =session.getAttribute("name").toString();
	String surname =session.getAttribute("surname").toString();
	String age =session.getAttribute("age").toString();
	String gender =session.getAttribute("gender").toString();
	String phonenumber =session.getAttribute("phonenumber").toString();
	String submittime =session.getAttribute("submittime").toString();
	String submitdate =session.getAttribute("submitdate").toString();
	String problem =session.getAttribute("problem").toString();
	
	out.println(name+" "+surname);
	out.println(age+" "+gender);
	out.println(problem);
	out.println(phonenumber);
	out.println(submitdate+" "+submittime);

%>

</body>
</html>