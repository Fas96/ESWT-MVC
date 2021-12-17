<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<div class="header">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-12">
        <div class="float-left">
          <div class="hamburger sidebar-toggle">
            <span class="line"></span>
            <span class="line"></span>
            <span class="line"></span>
          </div>
        </div>
        <div class="float-right">

          <div class="dropdown dib">
            <div class="header-icon" data-toggle="dropdown">
                                <span class="user-avatar">${sessionScope.fname}
                                  <i class="ti-angle-down f-s-10"></i>
                                </span>
              <div class="drop-down dropdown-profile dropdown-menu dropdown-menu-right">
                <div class="dropdown-content-heading">
                  <span class="text-left"><security:authentication property="principal.username"/></span>
                  <p class="trial-day"> <security:authentication property="principal.authorities"/></p>
                </div>
                <div class="dropdown-content-body">
                  <ul>
                    <li>
                      <a href="#">
                        <i class="ti-user"></i>
                        <span>Profile</span>
                      </a>
                    </li>

                    <li>
                      <a href="#">
                        <i class="ti-email"></i>
                        <span>Inbox</span>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="ti-settings"></i>
                        <span>Setting</span>
                      </a>
                    </li>

                    <li>
                      <a href="#">
                        <i class="ti-lock"></i>
                        <span>Lock Screen</span>
                      </a>
                    </li>
                    <li>
                      <form action="/logout" class="logoutform" method="post">
                        <input type="button" class="logoutBtn" value="Logout">
                      </form>

                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script>
  $(".logoutBtn").on('click',()=>{
    $('.logoutform').submit();
  });
</script>

<!-- /# sidebar -->
