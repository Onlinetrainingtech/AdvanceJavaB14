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

Cookie ck[]=request.getCookies();

out.println("Getting the cookie values is::"+ck[0].getValue());

out.println("Getting the cookie name is::"+ck[0].getName());

%>
</body>
</html>