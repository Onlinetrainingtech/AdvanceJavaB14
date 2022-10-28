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

try
{
	String u1=request.getParameter("uname");
	String p1=request.getParameter("pass");
	
	String str1="select * from adduserreg";
	
	Class.forName("org.h2.Driver");
	Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/advancejava14","sa","");
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery(str1);
	
	rs.next();
	
	String uname=rs.getString(1);
	String pass=rs.getString(2);
	
	
	
	if(u1.equals(uname)&&p1.equals(pass))
	{
		HttpSession sess=request.getSession();
		sess.setAttribute("k1",u1);
		RequestDispatcher rd=request.getRequestDispatcher("UserHomePage.jsp");
		rd.forward(request, response);
		//out.println("LoginSucess!!!");
	}
	else
	{
		RequestDispatcher rd=request.getRequestDispatcher("UserLogin.jsp");
		rd.include(request, response);
		
		out.println("LoginFail!!!");
	}
}
catch(Exception r)
{
	//System.out.println(r);
}

%>
</body>
</html>