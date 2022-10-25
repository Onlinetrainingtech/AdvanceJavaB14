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

String email=request.getParameter("email");

String pass=request.getParameter("pass");

if(email.equals("admin")&&pass.equals("admin"))
{
	HttpSession sess=request.getSession();
	sess.setAttribute("e1",email);
	RequestDispatcher rd=request.getRequestDispatcher("SessionPage.jsp");
	rd.forward(request, response);
}
else
{
	//out.println("LoginFail!!");
	Cookie ck=new Cookie("e1",email);
	response.addCookie(ck);
	RequestDispatcher rd=request.getRequestDispatcher("CookiePage.jsp");
	rd.forward(request, response);
}
	

%>
</body>
</html>