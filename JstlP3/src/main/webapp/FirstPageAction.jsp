<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="name" value="${param.uname}"></c:set>

<c:choose>

<c:when test="${name.equals('admin')}">

<c:out value="LoginSucess!!!"></c:out>

</c:when>

<c:otherwise>

<c:redirect url="error.jsp"></c:redirect>

</c:otherwise>
</c:choose>
</body>
</html>