<!DOCTYPE html>
<html>
<head>

    <%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <title>Admin Page</title>
    <%@ include file="/WEB-INF/views/component/admin-header.jsp" %>




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
                            <h4>Audio Files List</h4>

                        </div>
                    </div>
                </div>
            </div>
            <!-- row -->
            <!-- /# row -->
            <section id="main-content">
                <div class="row">

                    <div class="col-lg-12 ">
                        <button type="button"
                                onclick="window.location.href = 'create'; return false;"
                                class="btn btn-outline-info float-right">Add Question</button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="bootstrap-data-table-panel">
                                <div class="table-responsive">
                                    <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                            <th>QUESTION-ID</th>
                                            <th>QUESTION-TYPE</th>
                                            <th>MEDIA-RES</th>
                                            <th>ACTION</th>
                                        </tr>
                                        </thead>

                                        <c:forEach items="${answersWithAudio}" var="a">
                                            <c:url var="updateLink" value="/audio/edit">
                                                <c:param name="answerId" value="${a.id}" />
                                            </c:url>

                                            <c:url var="deleteLink" value="/audio/delete">
                                                <c:param name="answerId" value="${a.id}" />
                                            </c:url>
                                            <tbody>
                                            <tr>
                                                <td>${a.question_id}</td>
                                                <td>${a.question_type}</td>
                                                <td>${a.media_res}</td>
                                                <td><a href="${updateLink}">Update</a> | <a
                                                        href="${deleteLink}"
                                                        onclick="if(!(confirm('Are you sure want to delete this Question permanently?'))) return false">Delete</a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </c:forEach>

                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->
            <!-- /# row -->

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