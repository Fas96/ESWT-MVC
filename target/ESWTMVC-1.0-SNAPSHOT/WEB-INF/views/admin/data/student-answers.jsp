<!DOCTYPE html>
<html>
<head>

    <%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <title>Admin Page</title>
    <%@ include file="/WEB-INF/views/component/admin-header.jsp" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >

<%--    cdn for javascript not working delete later--%>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"  ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"  ></script>






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
                            <h4>Student List</h4>

                        </div>
                    </div>
                </div>
            </div>
            <!-- row -->


        <%--            the start of the marking modal--%>
            <div class="modal" tabindex="-1" id="exampleModal" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title modalTitleContent">Modal title</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body ">
                            <p class="modalBodyContent"> Modal body text goes here.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- row -->
            <!-- /# row -->
            <section id="main-content-top">

                <div class="row">

                    <div class="col-lg-12 ">
                        <button type="button"
                                onclick="window.location.href = 'edit'; return false;"
                                class="btn btn-outline-info float-right">List</button>
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
                                            <th>ID</th>
                                            <th>TYPE</th>
                                            <th>TEXT</th>
                                            <th>MEDIA</th>
                                            <th>ACTION</th>
                                        </tr>
                                        </thead>

                                        <c:forEach items="${questionList}" var="e">
                                            <c:url var="questionLink" value="/admin/data/grade">
                                                <c:param name="questionId" value="${e.question_id}" />
                                            </c:url>
                                            <tbody>
                                            <tr>
                                                <td class="question_id">${e.question_id}</td>
                                                <td class="question_type_${e.question_id}">${e.question_type}</td>
                                                <td style="word-break: break-all" class="text_res_${e.question_id}">${e.text_res}</td>
                                                <td >
                                                    <c:if test="${e.media_res!=null}">
                                                    <audio class="btn btn-outline media_res"   controls>
                                                    <source src="${e.media_res }" type="audio/mpeg">
                                                     </audio>
                                                    </c:if>
                                                </td>
                                                <td>
                                                    <!-- Button trigger modal -->
<%--                                                    <c:if test="${e.question_type eq 'WRITING' or e.question_type eq'LISTENING'}">--%>
                                                        <button type="button" class="btn btn-outline-info showModelbtn" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                            Mark_${e.question_id}
                                                        </button>
<%--                                                    </c:if>--%>

<%--                                                    <a href="${questionLink}" class="btn btn-outline-info">See Detail</a>--%>

                                                </td>
                                            </tr>
                                            </tbody>
                                        </c:forEach>
<%--                                        <div class="input-group visually-hidden">--%>
<%--                                        create a form to submit this data to the server--%>
<%--                                        when inserting the grade update if exist--%>
                                        <div class="visually-hidden gradeInputsSpeakingREADING">
                                            <span class="input-group-text text-center">Mark a score out of 9, the full score</span><br>
                                            <div class="input-group ">
                                                <span class="input-group-text questionIdGrade">Grade</span>
                                                <span class="input-group-text">Task completion</span> <input type="text" name="taskCompletion"  class="form-control">
                                                <span class="input-group-text">Fluency</span><input type="number" name="fluency"   class="form-control">
                                                <span class="input-group-text">Coherence</span><input type="number" name="coherence"   class="form-control">
                                                <span class="input-group-text">Pronunciation</span><input type="number" name="Pronunciation"  class="form-control">
                                                <span class="input-group-text">Language Use</span><input type="number" name="languageUse"   class="form-control">
                                                <span class="input-group-text">Grammar</span><input type="number" name="grammar"   class="form-control">
                                                <span class="input-group-text">Holistic Score</span><input type="number" name="holisticScore"   class="form-control">
                                                <input type="submit" value="submit">
                                            </div>
                                        </div>

                                        <div class="visually-hidden gradeInputsWRITINGLISTENING">
                                            <span class="input-group-text text-center">Mark a score out of 9, the full score</span><br>
                                            <div class="input-group  ">
                                                <span class="input-group-text questionIdGrade">Grade</span>
                                                <span class="input-group-text">Task completion</span> <input type="text" name="taskCompletion"  class="form-control">
                                                <span class="input-group-text">Grammar</span><input type="number" name="grammar"   class="form-control">
                                                <span class="input-group-text">Logic</span><input type="number" name="logic"   class="form-control">
                                                <span class="input-group-text">Language Use</span><input type="number" name="languageUse"   class="form-control">
                                                <span class="input-group-text">Mechanics</span><input type="number" name="mechanics"   class="form-control">
                                                <span class="input-group-text">Content</span><input type="number" name="content"   class="form-control">
                                                <span class="input-group-text">Holistic Score</span><input type="number" name="holisticScore"   class="form-control">
                                                <input type="submit" value="submit">
                                            </div>
                                        </div>

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

                <script>
                    $( document ).ready(function() {
                        console.log( "ready!" );
                        $('.showModelbtn').on('click',function () {
                             var getQuetionNum=(this.innerHTML).split("_")[1]

                            if($(".question_type_"+getQuetionNum).text()=='SPEAKING' || $(".question_type_"+getQuetionNum).text()=='READING' ){


                                $(".gradeInputsWRITINGLISTENING").addClass('visually-hidden');

                                $('.gradeInputsSpeakingREADING').removeClass('visually-hidden')
                            }else if($(".question_type_"+getQuetionNum).text()=='LISTENING' || $(".question_type_"+getQuetionNum).text()=='WRITING' ){

                                $('.gradeInputsWRITINGLISTENING').removeClass('visually-hidden')

                                  $(".gradeInputsSpeakingREADING").addClass('visually-hidden');
                            }



                            $('.modalTitleContent').text("Question: "+getQuetionNum+" "+$(".question_type_"+getQuetionNum).text() );
                            $('.modalBodyContent').html("<p>"+$(".text_res_"+getQuetionNum).text()+"</p>");


                            $('.questionIdGrade').text("Grade: "+getQuetionNum);


                            // alert($('.modalBodyContent').html())
                        })

                    });

                </script>

<%@ include file="/WEB-INF/views/component/admin-footer.jsp" %>


</body>
</html>