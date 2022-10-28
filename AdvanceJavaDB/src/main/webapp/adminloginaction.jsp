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

String e1=request.getParameter("email");
String p1=request.getParameter("pass");

String str1="select * from adminpage";


Class.forName("org.h2.Driver");
Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/advancejava14","sa","");
Statement stmt=conn.createStatement();

ResultSet rs=stmt.executeQuery(str1);

rs.next();

String email=rs.getString(1);

String pass=rs.getString(2);

if(e1.equals(email)&&p1.equals(pass))
{
	RequestDispatcher rd=request.getRequestDispatcher("AdminHomePage.jsp");
	rd.forward(request, response);
}
else
{
	RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");
	rd.include(request, response);
	out.println("LoginFail!!!");
}

%>
</body>
</html>