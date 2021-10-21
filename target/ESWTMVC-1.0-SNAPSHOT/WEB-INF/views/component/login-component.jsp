<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="unix-login">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="login-content">

                    <div class="login-form">
                        <h4>Member Login</h4>
                        <form class="login-form" method="post" name="login">
                            <div class="form-group">
                                <label>Member N&#8711;</label>
                                <input type="text" class="form-control" name="member_id" placeholder="member_id" required >
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" name="password" placeholder="Password"  required>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Remember Me
                                </label>
                                <label class="pull-right">
                                    <a href="#">Forgotten Password?</a>
                                </label>

                            </div>
                            <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Sign in</button>

                            <div class="register-link m-t-15 text-center">
                                <p>Don't have account ? <a href="registration.php"> Sign Up Here</a></p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>