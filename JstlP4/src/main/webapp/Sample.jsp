<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber> --%>

<c:set var="bal" value="100.23"></c:set>

<fmt:parseNumber var="d" value="${bal}" type="number"></fmt:parseNumber>

Your number is::<c:out value="${d}"></c:out>

<fmt:parseNumber var="d" value="${bal}" type="number" integerOnly="true"></fmt:parseNumber>

Your Number is::<c:out value="${d}"></c:out>

</body>
</html>