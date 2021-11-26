<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
              <i class="ti-bell"></i>
              <div class="drop-down dropdown-menu dropdown-menu-right">
                <div class="dropdown-content-heading">
                  <span class="text-left">Recent Notifications</span>
                </div>
                <div class="dropdown-content-body">
                  <ul>
                    <li>
                      <a href="#">
                        <img class="pull-left m-r-10 avatar-img" src="${base}/resources/images/avatar/3.jpg" alt="" />
                        <div class="notification-content">
                          <small class="notification-timestamp pull-right">02:34 PM</small>


                          <div class="notification-heading">${sessionScope.fname}</div>
                          <div class="notification-text">5 members joined today </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img class="pull-left m-r-10 avatar-img" src="${base}/resources/images/avatar/3.jpg" alt="" />
                        <div class="notification-content">
                          <small class="notification-timestamp pull-right">02:34 PM</small>
                          <div class="notification-heading">Mariam</div>
                          <div class="notification-text">likes a photo of you</div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img class="pull-left m-r-10 avatar-img" src="${base}/resources/images/avatar/3.jpg" alt="" />
                        <div class="notification-content">
                          <small class="notification-timestamp pull-right">02:34 PM</small>
                          <div class="notification-heading">Tasnim</div>
                          <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img class="pull-left m-r-10 avatar-img" src="${base}/resources/images/avatar/3.jpg" alt="" />
                        <div class="notification-content">
                          <small class="notification-timestamp pull-right">02:34 PM</small>
                          <div class="notification-heading">${sessionScope.fname}</div>
                          <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                        </div>
                      </a>
                    </li>
                    <li class="text-center">
                      <a href="#" class="more-link">See All</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="dropdown dib">
            <div class="header-icon" data-toggle="dropdown">
              <i class="ti-email"></i>
              <div class="drop-down dropdown-menu dropdown-menu-right">
                <div class="dropdown-content-heading">
                  <span class="text-left">2 New Messages</span>
                  <a href="email.html">
                    <i class="ti-pencil-alt pull-right"></i>
                  </a>
                </div>
                <div class="dropdown-content-body">
                  <ul>
                    <li class="notification-unread">
                      <a href="#">
                        <img class="pull-left m-r-10 avatar-img" src="${base}/resources/images/avatar/1.jpg" alt="" />
                        <div class="notification-content">
                          <small class="notification-timestamp pull-right">02:34 PM</small>
                          <div class="notification-heading">Michael Qin</div>
                          <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                        </div>
                      </a>
                    </li>
                    <li class="notification-unread">
                      <a href="#">
                        <img class="pull-left m-r-10 avatar-img" src="${base}/resources/images/avatar/2.jpg" alt="" />
                        <div class="notification-content">
                          <small class="notification-timestamp pull-right">02:34 PM</small>
                          <div class="notification-heading">${sessionScope.fname}</div>
                          <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img class="pull-left m-r-10 avatar-img" src="${base}/resources/images/avatar/3.jpg" alt="" />
                        <div class="notification-content">
                          <small class="notification-timestamp pull-right">02:34 PM</small>
                          <div class="notification-heading">Michael Qin</div>
                          <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <img class="pull-left m-r-10 avatar-img" src="${base}/resources/images/avatar/2.jpg" alt="" />
                        <div class="notification-content">
                          <small class="notification-timestamp pull-right">02:34 PM</small>
                          <div class="notification-heading">${sessionScope.fname}</div>
                          <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                        </div>
                      </a>
                    </li>
                    <li class="text-center">
                      <a href="#" class="more-link">See All</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="dropdown dib">
            <div class="header-icon" data-toggle="dropdown">
                                <span class="user-avatar">${sessionScope.fname}
                                  <i class="ti-angle-down f-s-10"></i>
                                </span>
              <div class="drop-down dropdown-profile dropdown-menu dropdown-menu-right">
                <div class="dropdown-content-heading">
                  <span class="text-left">Upgrade Now</span>
                  <p class="trial-day">30 Days Trail</p>
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