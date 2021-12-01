<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
</head>
<body onload='document.f.username.focus();'>




<c:if test="${param.error !=null}">
  <div class="alert alert-danger" role="alert">
    User wrong password/username
  </div>
</c:if>
<c:if test="${param.logout !=null}">
  <div class="alert alert-success" role="alert">
    Success logout!
  </div>
</c:if>
<h3>Custom Username and Password</h3>
<form:form name='f' action='${pageContext.request.contextPath}/authenticateTheUser'   method='POST'>
  <table>
    <tr><td>User:</td><td><input type='text' name='username' value=''  /></td></tr>
    <tr><td>Password:</td><td><input type='password' name='password'  /></td></tr>
    <tr><td colspan='2'><input name="submit" type="submit" value="Login"/></td></tr>
  </table>
</form:form>



</body>

</html>