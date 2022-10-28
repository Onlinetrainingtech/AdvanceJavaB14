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

String p=request.getParameter("pass");
String u3=request.getParameter("u2");

String str3="update adduserreg set pass='"+p+"' where uname='"+u3+"'";
Class.forName("org.h2.Driver");
Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/advancejava14","sa","");
Statement stmt=conn.createStatement();

stmt.executeUpdate(str3);

out.println("Updated!!!");
%>
</body>
</html>