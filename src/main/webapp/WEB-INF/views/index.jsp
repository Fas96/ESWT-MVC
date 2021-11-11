
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"   %>
<c:if test="${pageContext.request.getSession(true) == null}">
    <c:redirect url="/"/>
</c:if>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Page</title>
    <c:set var="base" value="${pageContext.request.contextPath}"/>

    </head>
<body>
 <h1>Admin main</h1>
 <a href="<c:url value="${base}/admin"/> ">Take home </a>
<%  %>



</body>
</html>