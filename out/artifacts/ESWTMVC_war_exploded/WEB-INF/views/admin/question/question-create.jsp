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
                                                    <div class="notification-heading">Mr. John</div>
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
                                                    <div class="notification-heading">Mr. John</div>
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
                                                    <div class="notification-heading">Mr. John</div>
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
                                                    <div class="notification-heading">Mr. John</div>
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
                                <span class="user-avatar">John
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
                                            <a href="/ESWT/components/logout.php">
                                                <i class="ti-power-off"></i>
                                                <span>Logout</span>
                                            </a>
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
                        <div class="compose-content ">
                            <h4 >Question Creation</h4>
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
                        <s:form action="save" method="post"  modelAttribute="question" enctype="multipart/form-data"   onsubmit="return checkTitleUnique(this);"   >
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
                                <input   name="image1" accept="image/png, image/jpeg" id="question_media" type="file" class="form-control"
                                         placeholder="Question Media  " />
                            </div>
                            <div class="form-group">
                                <input   name="image2" accept="image/png, image/jpeg" id="question_second" type="file" class="form-control"
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


<%--            modal for Question title uniqueness--%>
            <div class="modal fade text-center" id="modalDialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="modalTitle">Warning</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>

                        </div>
                        <div class="modal-body">
                            <span id="modalBody"></span>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>

                    </div>
                </div>
            </div>
<%--end of question title uniquness modal--%>
        <%--            end of question form--%>

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
<script type="text/javascript">
    $(document).ready(function () {

        // $("#btnCancel").on("click",function () {
        //     window.location.href="list";
        // })

        $("#question_media").change(function () {
            const fileSize = this.files[0].size;

            if(fileSize>1048576){
                this.setCustomValidity("You must choose an image less than 1MB")
                //browser prevent the image submited to the server
                this.reportValidity();
            }else{
                this.setCustomValidity("")
                // showShowImageThumpnail(this);
            }

        })
    })
    function showShowImageThumpnail(fileInput){
        var file=fileInput.files[0];
        var reader=new FileReader();
        reader.onload=function (ev) {
            $("#thumbnail").attr("src",ev.target.result);
        }
        reader.readAsDataURL(file);
    }
    function checkTitleUnique(form){
        var url="/question/checktitle";
        var questionTitle=$("#question_title").val();
        params={question_title:questionTitle };

        $.get(url,params,function (res){
            if(res === "NOT EXIST"){
                form.submit();
            }else if(res==="EXIST"){
                showModalDialog("Warning","Question::[ "+questionTitle+" ]exist")
                // alert("Response from server: "+res);
            }else {
                showModalDialog("Error","Unknown response from server");
            }
        }).fail(function (){

            showModalDialog("Error","Could not connect to server");
        });
        return false;
        function showModalDialog(title,message){
            $("#modalTitle").text(title);
            $("#modalBody").text(message);
            $("#modalDialog").modal('show');
        }
    }
</script>

</body>
</html>