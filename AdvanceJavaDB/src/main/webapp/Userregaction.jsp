<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String uname=request.getParameter("uname");

String pass=request.getParameter("pass");

String email=request.getParameter("email");

String mobile=request.getParameter("mobile");

String str2="insert into adduserreg values('"+uname+"','"+pass+"','"+email+"','"+mobile+"')";

Class.forName("org.h2.Driver");
Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/advancejava14","sa","");
Statement stmt=conn.createStatement();

stmt.executeUpdate(str2);

RequestDispatcher rd=request.getRequestDispatcher("UserLogin.jsp");
rd.forward(request, response);

%>
</body>
</html>