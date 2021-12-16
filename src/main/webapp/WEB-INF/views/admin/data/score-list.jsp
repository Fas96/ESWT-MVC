<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

    <%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
    <title>Admin Page</title>
    <%@ include file="/WEB-INF/views/component/admin-header.jsp" %>

    <style>
        td ,th{
            text-align: center;
        }
    </style>


</head>
<body>
<%@ include file="/WEB-INF/views/admin/sidebar.jsp" %>
<%@ include file="/WEB-INF/views/admin/admin-header.jsp" %>


<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <div class="page-header">
                        <div class="page-title">
                            <h1>Hello,
                                <span>Welcome Here</span>
                            </h1>
                        </div>
                    </div>
                </div>
                <!-- /# column -->
                <div class="col-lg-4 p-l-0 title-margin-left">
                    <div class="page-header">
                        <div class="page-title">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#">Dashboard</a>
                                </li>
                                <li class="breadcrumb-item active">UI-Blank</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- /# column -->
            </div>
            <div class="col-md-8 ">
                <div class="card">
                    <div class="card-body">
                        <div class="compose-content">
                            <h4>Score Listing</h4>

                        </div>
                    </div>
                </div>
            </div>
            <!-- row -->
            <section id="main-content-top">
                <div class="row">

                    <div class="col-lg-12 ">
                        <button type="button"
                                onclick="window.location.href = 'edit'; return false;"
                                class="btn btn-outline-info float-right">Go Grade</button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <c:choose>
                                <c:when test="${fn:length(studentScoresList) gt 0 }">
                                    <div class="bootstrap-data-table-panel">
                                        <div class="table-responsive">
                                            <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                                                <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>NAME</th>
                                                    <th>SPEAKING</th>
                                                    <th>WRITING</th>
                                                    <th>READING</th>
                                                    <th>LISTENING</th>
                                                    <th>TOTAL SCORE</th>
                                                    <th>DATE</th>
                                                </tr>
                                                </thead>
                                                <c:forEach items="${studentScoresList}" var="e">
<%--                                                    <c:url var="gradeLink" value="/admin/data/edit">--%>
<%--                                                        <c:param name="gradeId" value="${e.id}" />--%>
<%--                                                    </c:url>--%>
                                                    <tbody>
                                                    <tr>

                                                        <td>${e.id}</td>
                                                        <td>${e.name}</td>
                                                        <td>${e.speaking}</td>
                                                        <td>${e.writing}</td>
                                                        <td>${e.reading}</td>
                                                        <td>${e.listening}</td>
                                                        <td>${e.totalScore}</td>
                                                        <td><fmt:formatDate type="date" value="${e.date}"/></td>

                                                    </tr>
                                                    </tbody>
                                                </c:forEach>

                                            </table>

                                        </div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    Students Scores not present
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->
                </div>
            <!-- /# row -->
            <section id="main-content">
                <div class="row">
                    <div class="col-lg-12">
                        <div id="extra-area-chart"></div>
                        <div id="morris-line-chart"></div>
                        <div class="footer">
                            <p>2021 © Admin Board. -
                                <a href="http://fasgh.govt.kr/" target="_blank">fasgh.govt.kr</a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/component/admin-footer.jsp" %>


</body>
</html>