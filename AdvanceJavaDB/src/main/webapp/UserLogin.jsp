<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>UserLoginPage</h3>

<jsp:include page="header.jsp"></jsp:include>
<form action="Userloginaction.jsp">
UserId:<input type="text" name="uname"/>
UserPwd:<input type="text" name="pass"/>
<input type="submit" value="UserLogin"/>
</form>
</body>
</html>