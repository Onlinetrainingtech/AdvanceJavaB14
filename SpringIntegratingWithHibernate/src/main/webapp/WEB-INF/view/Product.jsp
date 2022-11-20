<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form action="addproduct" method="get">
ProductId:<input type="text" name="t1"/>
ProductCost:<input type="text" name="t2"/>
ProductName:<input type="text" name="t3"/>

<input type="submit" value="Login"/> 

</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>