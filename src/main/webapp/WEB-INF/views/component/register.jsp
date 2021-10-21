<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2021-10-21
  Time: 오후 6:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<?php require("components/header.php")?>
<body >

<div class="unix-login">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-5">
                <div class="login-content">

                    <div class="login-form">
                        <h4>Register as Member</h4>
                        <form>
                            <div class="form-group">
                                <label>User Name</label>
                                <input type="email" class="form-control" placeholder="User Name">
                            </div>
                            <div class="form-group">
                                <label>Member N&#8711;</label>
                                <input type="number" class="form-control" placeholder="member ID">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" placeholder="Password">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Agree the terms and policy
                                </label>
                            </div>
                            <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Register</button>

                            <div class="register-link m-t-15 text-center">
                                <p>Already have account ? <a href="login.php"> Sign in</a></p>
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