<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>AddStaffDetails</h3>
<form action="AddStaffDetailsAction.jsp">
 StaffId:<input type="text" name="staffid"/>
 StaffName:<input type="text" name="staffname"/>
 EmailId:<input type="text" name="email"/>
 Gender:
 Male:<input type="radio" name="g1" value="male"/>
 Female:<input type="radio" name="g1" value="female"/>
 <input type="submit" value="AddStaff"/>
</form>
</body>
</html>