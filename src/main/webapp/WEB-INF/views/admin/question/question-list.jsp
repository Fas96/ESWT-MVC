<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <title>Admin Page</title>
        <%@ include file="/WEB-INF/views/component/admin-header.jsp" %>

        <script src="https://code.jquery.com/jquery-3.6.0.js"
                integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
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
                                        <li class="breadcrumb-item active">ESWT</li>
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
                                    <h4>Questions List</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- row -->
                    <!-- /# row -->
                    <section>
                        <div class="row">

                            <div class="col-lg-12 ">
                                <button type="button"
                                        onclick="window.location.href = 'create'; return false;"
                                        class="btn btn-outline-info float-right">Add Question
                                </button>
                            </div>
                        </div>
                        <div class="content-wrap">
                            <div class="main">
                                <div class="container-fluid">
                                    <!-- /# row -->
                                    <section id="main-content">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="card">
                                                    <div class="bootstrap-data-table-panel">
                                                        <c:choose>
                                                            <c:when test="${fn:length(questionList) gt 0 }">
                                                                <div class="table-responsive">
                                                                    <table id="bootstrap-data-table-export"
                                                                           class="table table-striped table-bordered">
                                                                        <thead>
                                                                            <tr>
                                                                                <th>TYPE</th>
                                                                                <th>TITLE</th>
                                                                                <th>CONTENT</th>
                                                                                <th>PREP TIME</th>
                                                                                <th>RES TIME</th>
                                                                                <th>Action</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <c:forEach items="${questionList}" var="e">
                                                                            <c:url var="updateLink"
                                                                                   value="/admin/question/edit">
                                                                                <c:param name="questionId"
                                                                                         value="${e.id}"/>
                                                                            </c:url>

                                                                            <c:url var="deleteLink"
                                                                                   value="/admin/question/delete">
                                                                                <c:param name="questionId"
                                                                                         value="${e.id}"/>
                                                                            </c:url>

                                                                                <tr>
                                                                                    <td>${e.question_type}</td>
                                                                                    <td>${e.question_title}</td>
                                                                                    <td>${e.question_content}</td>
                                                                                    <td>${e.question_prepTime}</td>
                                                                                    <td>${e.question_resTime}</td>
                                                                                    <td>
                                                                                        <a href="${updateLink}">Update</a>
                                                                                        | <a
                                                                                            href="${deleteLink}"
                                                                                            onclick="if(!(confirm('Are you sure want to delete this Question permanently?'))) return false">Delete</a>
                                                                                    </td>
                                                                                </tr>

                                                                        </c:forEach>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </c:when>
                                                            <c:otherwise>
                                                                No questions to Display! Create Some quesitons!!
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                </div>
                                                <!-- /# card -->
                                            </div>
                                            <!-- /# column -->
                                        </div>

                                    </section>
                                </div>
                            </div>
                        </div>
                        <!-- /# row -->
                        <!-- /# row -->

                        <div class="row">
                            <div class="col-lg-12">
                                <div id="extra-area-chart"></div>
                                <div id="morris-line-chart"></div>
                                <div class="footer">
                                    <p>2021 ?? ESWT . -
                                        <a href="http://fasgh.govt.kr/" target="_blank">fasgh.govt.kr</a>
                                    </p>
                                </div>
                            </div>
                        </div>


                        <script type="text/javascript">
                            fetch('http://localhost:8080/question/checkuser?questionId=3')
                                .then(response => response.text())
                                .then(commits => console.log(commits));
                        </script>

                        <%@ include file="/WEB-INF/views/component/admin-footer.jsp" %>


    </body>
</html>