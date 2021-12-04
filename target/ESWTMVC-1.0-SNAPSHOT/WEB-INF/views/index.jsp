
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"   %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<c:if test="${pageContext.request.getSession(true) == null}">
    <c:redirect url="/"/>
</c:if>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
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
<%--     <a href="<c:url value="${base}/admin"/> ">Take home </a>--%>
     <div class="alert alert-success" role="alert">
         Role(s):  <security:authentication property="principal.authorities"/>
     <div class="alert alert-success" role="alert">
         User ID:  <security:authentication property="principal.username"/><br>
     </div>



         <security:authorize access="hasAnyRole('ROLE_PROFESSOR')" var="isPROFESSOR" />
         <security:authorize access="hasRole('ROLE_ASSIST')" var="isASSIST" />
         <security:authorize access="hasRole('ROLE_DEV')" var="isDEV" />
         <security:authorize access="hasRole('ROLE_STUDENT')" var="isSTUDENT" />

         <span class="col-2 m-md-1 ">Professor: &nbsp;${isPROFESSOR}</span>|<span class="col-2">Assist:&nbsp;${isASSIST}</span>|<span class="col-2">Dev:&nbsp; ${isDEV}</span>|<span class="col-2">Student: &nbsp;${isSTUDENT}</span>

         <div class="alert alert-success" role="alert">
             <c:choose>
                 <c:when test="${isDEV}">
                     <a href="${pageContext.request.contextPath}/admin"> Admin Page</a>|
                     <a href="${pageContext.request.contextPath}/exams/start"> Student</a><br>
                 </c:when>
                 <c:when test="${isPROFESSOR}">
                     <a href="${pageContext.request.contextPath}/admin"> Prof</a><br>
                     <a href="${pageContext.request.contextPath}/exams/start"> Student</a><br>
                 </c:when>
                 <c:when test="${isASSIST}">
                     <a href="${pageContext.request.contextPath}/admin"> Assist</a><br>
                     <a href="${pageContext.request.contextPath}/exams/start"> Student</a><br>
                 </c:when>
                 <c:when test="${isSTUDENT}">
<%--                     <a href="${pageContext.request.contextPath}/exams/start"> Student</a><br>--%>
                     <c:redirect url="${pageContext.request.contextPath}/exams/start"/>
                 </c:when>
             </c:choose>




         </div>

 </div>






</body>
</html>