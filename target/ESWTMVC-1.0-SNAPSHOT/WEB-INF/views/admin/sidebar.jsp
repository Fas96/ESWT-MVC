<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>



<security:authorize access="hasAnyRole('ROLE_PROFESSOR')" var="isPROFESSOR" />
<security:authorize access="hasRole('ROLE_ASSIST')" var="isASSIST" />
<security:authorize access="hasRole('ROLE_DEV')" var="isDEV" />
<security:authorize access="hasRole('ROLE_STUDENT')" var="isSTUDENT" />

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
<%--        checking if the person has the right to see questions--%>
        <c:if test="${isDEV or isPROFESSOR}">
        <li><a class="sidebar-sub-toggle"><i class="ti-email"></i> Questions <span
                class="sidebar-collapse-icon ti-angle-down"></span></a>
          <ul>
            <li><a href="${base}/admin/question/create">create</a></li>
            <li><a href="${base}/admin/question/list">list</a></li>
          </ul>
        </li>
        </c:if>
        <li><a class="sidebar-sub-toggle"><i class="ti-layout-grid4-alt"></i> Data <span
                class="sidebar-collapse-icon ti-angle-down"></span></a>
          <ul>
            <li><a href="${base}/admin/data/list">students Score list </a></li>
            <li><a href="${base}/admin/data/export">Students Data Export</a></li>
                <c:if test="${isDEV or isPROFESSOR}">
            <li><a href="${base}/admin/data/edit">Grade Student</a></li>
                </c:if>
          </ul>
        </li>
        <li><a class="sidebar-sub-toggle"><i class="ti-headphone-alt"></i> Audio <span
                class="sidebar-collapse-icon ti-angle-down"></span></a>
          <ul>
            <li><a href="${base}/admin/audio/list">Audio Files List</a></li>
            <li><a href="${base}/admin/audio/test"> Audio test </a></li>
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

        <li><a  href="${base}/admin/mock/testExample"><i class="ti-target"></i> Test <span
        ></span></a>

        </li>
      </ul>
    </div>
  </div>
</div>

<!-- /# sidebar -->
