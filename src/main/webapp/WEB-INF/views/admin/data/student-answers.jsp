<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                                    <c:choose>
                                        <c:when test="${fn:length(questionList) gt 0 }">


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

                                        <tbody>
                                        <c:forEach items="${questionList}" var="e">
                                            <c:url var="questionLink" value="/admin/data/grade">
                                                <c:param name="questionId" value="${e.question_id}" />
                                            </c:url>

                                            <tr>
                                                <td  >${e.question_id}</td>
                                                <td class="question_type_${e.question_id}">${e.question_type}</td>
                                                <td style="word-break: break-all" class="text_res_${e.question_id}">${e.text_res}</td>
                                                <p class="visually-hidden media_res_${e.question_id}"> ${e.media_res}</p>
                                                <td >
                                                    <c:if test="${e.media_res!=null}">
                                                    <audio class="btn btn-outline"   controls>
                                                    <source src="${e.media_res }" type="audio/mpeg">
                                                     </audio>
                                                    </c:if>
                                                </td>
                                                <td>
                                                    <!-- Button trigger modal -->
                                                    <c:if test="${e.question_type eq 'WRITING' or e.question_type eq'LISTENING'}">
                                                        <button type="button" class="btn btn-outline-info showModelbtn" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                            Mark_${e.question_id}
                                                        </button>
                                                    </c:if>
                                                    <c:if test="${e.question_type eq 'SPEAKING' or e.question_type eq'READING'}">
                                                        <button class="btn btn-outline-info showModelbtn">
                                                            Mark_${e.question_id}
                                                        </button>
                                                    </c:if>

<%--                                                    <a href="${questionLink}" class="btn btn-outline-info">See Detail</a>--%>

                                                </td>
                                            </tr>

                                        </c:forEach>
                                        </tbody>
<%--                                        <div class="input-group visually-hidden">--%>
<%--                                        create a form to submit this data to the server--%>
<%--                                        when inserting the grade update if exist--%>

                                        <form action="/admin/data/saveGrade" method="post" commandName="grade" class="FormgradeInputsSpeakingREADING">
                                        <div class="visually-hidden gradeInputsSpeakingREADING">
                                            <span class="input-group-text text-center">Mark a score out of 9, the full score</span><br>
                                            <div class="input-group ">
                                                <span class="input-group-text questionIdGrade">Grade</span>
                                                <input type="hidden" name="question_id" path="question_id" class="question_id" value="">
                                                <input type="hidden" name="member_id" path="member_id"  value="" class="member_id">
                                                <input type="hidden" name="question_type"  path="question_type" value="" class="question_type" >
                                                <span class="input-group-text">Task completion</span> <input type="number" name="answer_taskCompletion" path="answer_taskCompletion" class="form-control">
                                                <span class="input-group-text">Fluency</span><input type="number" name="answer_fluency" path="answer_fluency"  class="form-control">
                                                <span class="input-group-text">Coherence</span><input type="number" name="answer_coherence" path="answer_coherence"  class="form-control">
                                                <span class="input-group-text">Pronunciation</span><input type="number" name="answer_pronounciation" path="answer_pronounciation" class="form-control">
                                                <span class="input-group-text">Language Use</span><input type="number" name="answer_languageUse" path="answer_languageUse"  class="form-control">
                                                <span class="input-group-text">Grammar</span><input type="number" name="answer_grammar"  path="answer_grammar" class="form-control">
                                                <span class="input-group-text">Holistic Score</span><input type="number" name="score"  path="score"  class="form-control">
                                                <input type="submit" value="submit">
                                            </div>
                                        </div>
                                        </form>

                                        <form action="/admin/data/saveGrade" method="post" commandName="grade" class="FormgradeInputsWRITINGLISTENING">
                                        <div class="visually-hidden gradeInputsWRITINGLISTENING">
                                            <span class="input-group-text text-center">Mark a score out of 9, the full score</span><br>
                                            <div class="input-group  ">
                                                <span class="input-group-text questionIdGrade">Grade</span>
                                                <input type="hidden" name="question_id" path="question_id" class="question_id" value="" >
                                                <input type="hidden" name="member_id"  value="" class="member_id" >
                                                <input type="hidden" name="question_type" value="" class="question_type">
                                                <span class="input-group-text">Task completion</span> <input type="number" name="answer_taskCompletion"  path="answer_taskCompletion"  class="form-control">
                                                <span class="input-group-text">Grammar</span><input type="number" name="answer_grammar" path="answer_grammar"   class="form-control">
                                                <span class="input-group-text">Logic</span><input type="number" name="Logic" path="Logic"   class="form-control">
                                                <span class="input-group-text">Language Use</span><input type="number" name="answer_languageUse"  path="answer_languageUse"  class="form-control">
                                                <span class="input-group-text">Mechanics</span><input type="number" name="Mechanics" path="Mechanics"  class="form-control">
                                                <span class="input-group-text">Content</span><input type="number" name="Content" path="Content"  class="form-control">
                                                <span class="input-group-text">Holistic Score</span><input type="number" name="score" path="score"   class="form-control">
                                                <input type="submit" value="submit">
                                            </div>
                                        </div>
                                        </form>
                                    </table>
                                        </c:when>

                                        <c:otherwise>
                                            student score was entered already!!
                                        </c:otherwise>

                                    </c:choose>
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
                            <p>2021 ?? ESWT. -
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

                                // alert($('.media_res_'+getQuetionNum).text())
                                // alert('<audio class="btn btn-outline"   controls> <source src="+$(".media_res_"+getQuetionNum).text()+" type="audio/mpeg"> </audio>')

                                $(".gradeInputsWRITINGLISTENING").addClass('visually-hidden');

                                $('.gradeInputsSpeakingREADING').removeClass('visually-hidden')

                            }else if($(".question_type_"+getQuetionNum).text()=='LISTENING' || $(".question_type_"+getQuetionNum).text()=='WRITING' ){

                                $('.gradeInputsWRITINGLISTENING').removeClass('visually-hidden')

                                  $(".gradeInputsSpeakingREADING").addClass('visually-hidden');

                            }



                            $('.modalTitleContent').text("Question: "+getQuetionNum+" "+$(".question_type_"+getQuetionNum).text() );
                            $('.modalBodyContent').html("<p>"+$(".text_res_"+getQuetionNum).text()+"</p>");


                            $('.questionIdGrade').text("Grade: "+getQuetionNum);

                            // setting the hidden fields values
                            // alert(parseInt(getQuetionNum))
                            //not the value does not work
                            // $('.question_id').value=parseInt(getQuetionNum);
                            $('.question_id').attr("value", parseInt(getQuetionNum));
                            $('.member_id').attr("value", parseInt(window.location.href.split("=")[1]));
                            $('.question_type').attr("value",$(".question_type_"+getQuetionNum).text());



                        })

                    });

                </script>

<%@ include file="/WEB-INF/views/component/admin-footer.jsp" %>


</body>
</html>