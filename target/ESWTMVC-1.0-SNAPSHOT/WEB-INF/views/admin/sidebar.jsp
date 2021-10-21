<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2021-10-21
  Time: 오후 6:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
body>
<div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
  <div class="nano">
    <div class="nano-content">
      <ul>
        <div class="logo"><a href="/ESWT/admin/index.php">
          <img src="/ESWT/assets/images/logo.png" alt="" height="20%" width="20%" /> <span>ESWT</span></a></div>
        <li class="label">Main</li>
        <li><a href="/ESWT/admin/index.php"  ><i class="ti-home"></i> Dashboard </a>
        </li>

        <li class="label">Apps</li>
        <li><a class="sidebar-sub-toggle"><i class="ti-email"></i> Questions <span
                class="sidebar-collapse-icon ti-angle-down"></span></a>
          <ul>
            <li><a href="/ESWT/admin/question/question-create.php">create</a></li>
            <li><a href="/ESWT/admin/question/question-edit.php">Edit</a></li>
            <li><a href="/ESWT/admin/question/question-list.php">list</a></li>
          </ul>
        </li>

        <li><a class="sidebar-sub-toggle"><i class="ti-layout-grid4-alt"></i> Data <span
                class="sidebar-collapse-icon ti-angle-down"></span></a>
          <ul>
            <li><a href="/ESWT/admin/data/score-list.php">students Score list </a></li>
            <li><a href="/ESWT/admin/data/score-export.php">Students Data Export</a></li>
            <li><a href="/ESWT/admin/data/score-edit.php">Edit Student Data </a></li>
          </ul>
        </li>
        <li><a class="sidebar-sub-toggle"><i class="ti-headphone-alt"></i> Audio <span
                class="sidebar-collapse-icon ti-angle-down"></span></a>
          <ul>
            <li><a href="/ESWT/admin/audio/audio-list.php">Audio Files List</a></li>
            <li><a href="/ESWT/admin/audio/audio-export.php">Audio Files Export</a></li>
            <li><a href="/ESWT/admin/audio/audio-edit.php">Edit Students Audio </a></li>
            <li><a href="/ESWT/admin/audio/audio-test.php">Audio test </a></li>
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

        <li><a  href="test-example.php"><i class="ti-target"></i> Test <span
        ></span></a>

        </li>
      </ul>
    </div>
  </div>
</div>
<!-- /# sidebar -->
