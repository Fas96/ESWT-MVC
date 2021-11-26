<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

    <%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <title>Admin Page</title>
    <%@ include file="/WEB-INF/views/component/admin-header.jsp" %>

    <link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="  crossorigin="anonymous"></script>




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
                                      <h4>Question Edit</h4>

                                  </div>
                            </div>
                    </div>
                 </div>
                            <!-- row -->

                <%--            question form--%>
                <div class="col-md-8 ">
                    <div class="card">
                        <div class="card-body">
                            <div class="compose-content ">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="container">
                                            <s:form  action="save" method="post"    id="questionForm"  modelAttribute="question"    enctype="multipart/form-data"  >
                                                <s:hidden path="id" />
                                                <div class="form-group">
                                                    <div class="form-check-inline">
                                                        <label class="form-check-label">
                                                            <s:radiobutton path="question_type" value="WRITING" class="form-check-input"/>WRITING
                                                        </label>
                                                    </div>

                                                    <div class="form-check-inline">
                                                        <label class="form-check-label">
                                                            <s:radiobutton path="question_type" value="READING" class="form-check-input"/>READING
                                                        </label>
                                                    </div>
                                                    <div class="form-check-inline">
                                                        <label class="form-check-label">
                                                            <s:radiobutton path="question_type" value="SPEAKING" class="form-check-input"/>SPEAKING
                                                        </label>
                                                    </div>
                                                    <div class="form-check-inline">
                                                        <label class="form-check-label">
                                                            <s:radiobutton path="question_type" value="LISTENING" class="form-check-input"/>LISTENING
                                                        </label>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <s:input path="question_title" id="question_title" class="form-control"
                                                             placeholder="Question Title  " />
                                                </div>

                                                <div class="form-group">
                                                    <s:textarea rows="5" cols="6" path="question_content" placeholder="Enter Question Content" class="form-control" />
                                                </div>
                                                <div class="form-group">
                                                    <input disabled value="${question.question_second}"  name="image1" accept="image/png, image/jpeg" id="question_media" type="file" class="form-control"
                                                             placeholder="Question Media  " />
                                                </div>
                                                <div class="form-group">
                                                    <input disabled value="${question.question_media}" name="image2" accept="image/png, image/jpeg" id="question_second" type="file" class="form-control"
                                                             placeholder="Question Media  Second" />
                                                </div>
                                                <div class="form-group">
                                                    <s:input path="question_prepTime" type="number" class="form-control"
                                                             placeholder="Question Preparation Time  " />
                                                </div>
                                                <div class="form-group">
                                                    <s:input path="question_resTime" type="number" class="form-control"
                                                             placeholder="Enter Question Response Time  " />
                                                </div>
                                                <div class="form-group">
                                                    <s:textarea rows="3" cols="6" path="question_memo" placeholder="Question Memo" class="form-control" />
                                                </div>
                                                <div class="form-group">
                                                    <s:input path="question_sessionId" type="number" class="form-control"
                                                             placeholder="Question Session Id    " />
                                                </div>
                                                <div class="form-group">
                                                    <s:input path="quetion_orderNo" type="number" class="form-control"
                                                             placeholder="Question Session Id    " />
                                                </div>
                                                <div class="text-center">

                                                    <input type="submit" value="Save" class="btn btn-outline-info" />&nbsp;
                                                    <input type="reset" value="Reset" class="btn btn-outline-danger" />
                                                </div>

                                            </s:form>
                                            <hr />
                                            <a href="list">Back to List</a>
                                        </div>


                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
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

<script type="text/javascript">

    const colorArr=["blue","tomato"]
    var J=0;
    $('input[type="file"]').each(function(){  $(this).css("background-color",colorArr[J++])});




</script>

<%@ include file="/WEB-INF/views/component/admin-footer.jsp" %>


</body>
</html>