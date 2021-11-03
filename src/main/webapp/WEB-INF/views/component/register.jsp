<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2021-10-21
  Time: 오후 6:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="header.jsp"/>
<body >

<div class="unix-login">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-5">
                <div class="login-content">

                    <div class="login-form">
                        <h4>Register as Member</h4>
                        <form commandName="member" action="/processRegister" method="post" name="login" >
                            <div class="form-group">
                                <label>User Name</label>
                                <input type="email" name="member_name" class="form-control" placeholder="User Name" path="member.member_name">
                            </div>
                            <div class="form-group">
                                <label>Member N&#8711;</label>
                                <input type="number" class="form-control"  name="member_id"  placeholder="member ID" path="member.member_id">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" name="member_password" placeholder="Password" path="member.member_password">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Agree the terms and policy
                                </label>
                            </div>
                            <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Register</button>

                            <div class="register-link m-t-15 text-center">
                                <p>Already have account ? <a href="/login"> Sign in</a></p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>