
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
    <style>
        .logoutss{
            align-content: flex-end;
            float:inherit;
            margin-left: 50%;
            display: inline;
            float: right;
        }
        .mainAdmin{
            height: 500px;
            width: 100%;
            border: 2px solid #0E566C;
            border-radius: 4px;
        }
        h1{
            display: inline;
        }
    </style>

    </head>
<body>
 <h1  >Admin main</h1>
 <div class="logoutss">
     <form action="logout" method="post">
         <input type="submit" value="Logout">
     </form>
 </div>
 <div class="mainAdmin">
     <a href="<c:url value="${base}/admin"/> ">Take home </a>
 </div>






</body>
</html>