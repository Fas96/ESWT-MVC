<%@ page contentType="text/html;charset=UTF-8" language="java" %>
body>
<div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
  <div class="nano">
    <div class="nano-content">
      <ul>
        <div class="logo"><a href="${base}/admin">
          <img src="${base}/resources/images/logo.png" alt="" height="20%" width="20%" /> <span>ESWT</span></a></div>
        <li class="label">Main</li>
        <li><a href="${base}/admin"  ><i class="ti-home"></i> Dashboard </a>
        </li>

        <li class="label">Apps</li>
        <li><a class="sidebar-sub-toggle"><i class="ti-email"></i> Questions <span
                class="sidebar-collapse-icon ti-angle-down"></span></a>
          <ul>
            <li><a href="${base}/question/create">create</a></li>
            <li><a href="${base}/question/list">list</a></li>
          </ul>
        </li>

        <li><a class="sidebar-sub-toggle"><i class="ti-layout-grid4-alt"></i> Data <span
                class="sidebar-collapse-icon ti-angle-down"></span></a>
          <ul>
            <li><a href="${base}/data/list">students Score list </a></li>
            <li><a href="${base}/data/export">Students Data Export</a></li>
            <li><a href="${base}/data/edit">Edit Student Data </a></li>
          </ul>
        </li>
        <li><a class="sidebar-sub-toggle"><i class="ti-headphone-alt"></i> Audio <span
                class="sidebar-collapse-icon ti-angle-down"></span></a>
          <ul>
            <li><a href="${base}/audio/list">Audio Files List</a></li>
            <li><a href="${base}/audio/export">Audio Files Export</a></li>
            <li><a href="${base}/audio/edit">Edit Students Audio </a></li>
            <li><a href="${base}/audio/test"> Audio test </a></li>
          </ul>
        </li>

        <li><a class="sidebar-sub-toggle"><i class=" ti-bookmark-alt"></i> Contact <span
                class="sidebar-collapse-icon ti-angle-down"></span></a>
          <ul>
            <li><a href="app-event-calender.html"><i class="ti-calendar"></i> Calender </a></li>
            <li><a href="app-email.html"><i class="ti-email"></i> Email</a></li>
          </ul>
        </li>

        <li class="label">Extra</li>

        <li><a  href="${base}/mock/testExample"><i class="ti-target"></i> Test <span
        ></span></a>

        </li>
      </ul>
    </div>
  </div>
</div>

<!-- /# sidebar -->
