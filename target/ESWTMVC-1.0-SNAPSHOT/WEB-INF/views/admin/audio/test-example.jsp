<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <title>Admin Page</title>
    <%@ include file="/WEB-INF/views/component/admin-header.jsp" %>




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
                                                <img class="pull-left m-r-10 avatar-img"
                                                     src="${base}/resources/images/avatar/3.jpg" alt=""/>
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading"><%= session.getAttribute("fname") %></div>
                                                    <div class="notification-text">5 members joined today</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img class="pull-left m-r-10 avatar-img"
                                                     src="${base}/resources/images/avatar/3.jpg" alt=""/>
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading"><%= session.getAttribute("fname") %></div>
                                                    <div class="notification-text">likes a photo of you</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img class="pull-left m-r-10 avatar-img"
                                                     src="${base}/resources/images/avatar/3.jpg" alt=""/>
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading">Tasnim</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you
                                                        ...
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img class="pull-left m-r-10 avatar-img"
                                                     src="${base}/resources/images/avatar/3.jpg" alt=""/>
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading"><%= session.getAttribute("fname") %></div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you
                                                        ...
                                                    </div>
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
                                                <img class="pull-left m-r-10 avatar-img"
                                                     src="${base}/resources/images/avatar/1.jpg" alt=""/>
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading">Michael Qin</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you
                                                        ...
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="notification-unread">
                                            <a href="#">
                                                <img class="pull-left m-r-10 avatar-img"
                                                     src="${base}/resources/images/avatar/2.jpg" alt=""/>
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading">Mr. <%= session.getAttribute("fname") %></div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you
                                                        ...
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img class="pull-left m-r-10 avatar-img"
                                                     src="${base}/resources/images/avatar/3.jpg" alt=""/>
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading">Michael Qin</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you
                                                        ...
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img class="pull-left m-r-10 avatar-img"
                                                     src="${base}/resources/images/avatar/2.jpg" alt=""/>
                                                <div class="notification-content">
                                                    <small class="notification-timestamp pull-right">02:34 PM</small>
                                                    <div class="notification-heading">Mr. <%= session.getAttribute("fname") %></div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you
                                                        ...
                                                    </div>
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
                                <span class="user-avatar"><%= session.getAttribute("fname") %>
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
                        <div class="compose-content">
                            <h4>Mock Test</h4>

                        </div>
                    </div>
                </div>
            </div>
            <!-- row -->
            <%--            question form--%>
            <div class="col-md-12 ">
                <c:set value="${displayQuestion}" var="d"/>
                <c:if test="${d!=null}">
                <div class="card">

                    <a class="card-title text-center">${d.question_title}</a>
                    <div class="card-body">
                        <div class="compose-content ">
                            <form action="/mock/save" method="POST" id="save_form" modelAttribute="answer">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-6 text-center">
                                            <input type="hidden"  class="question_type" name="question_type" value="${d.question_type}" path="question_type">
                                            <input type="hidden" name="question_id" class="question_id" value="${d.id}" path="question_id">
                                            <input type="hidden" name="member_id" class="member_id" value="${member_id}" path="member_id">
                                            <c:choose>
                                                <c:when test="${d.question_type=='WRITING' or d.question_type=='LISTENING'}">
                                                    <br/><textarea path="text_res" style="height: 100%" placeholder="answer field " class="form-control member_id" name="text_res"></textarea>


                                                </c:when>
                                                <c:when test="${(d.question_type=='SPEAKING' or d.question_type=='READING') and d.question_media!=null}">
                                                    <img height="400px" width="100%"
                                                         src="<c:url value='${base}/resources/question-images/${d.id}/${d.question_media}'/>"/>
                                                    <br/>
                                                    <div class="audio" id="audio">
                                                        <div class="waves record">
                                                            <canvas id="visualizer" ></canvas>
                                                        </div>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>others</c:otherwise>
                                            </c:choose>

                                        </div>
                                        <div class="col-lg-6 text-center">
                                            <button type="button" id="question_resTime"   class="btn-rounded m-2 p-3 btn-outline-info">${d.question_resTime}</button>
                                        </div>

                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
                </c:if>
                <c:if test="${d==null}">
                    <p>Thank you for taking the test</p>
                </c:if>

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




        $(window).on('load',function() {

            var getUserMedia = navigator.webkitGetUserMedia || navigator.mozGetUserMedia;

            var isRecording = 0;

            function getAudio(){return navigator.mediaDevices.getUserMedia({audio: true})}

            var device = getAudio()
            var items =[];
            device.then(stream=>{
                recorder = new MediaRecorder(stream);

                recorder.ondataavailable= (e)=>{
                    items.push(e.data);
                    if(recorder.state=='inactive'){

                        var blob= new Blob(items,{type:'audio/webm'});
                        var audio = $('#audio');
                        var mainaudio=document.createElement('audio');
                        mainaudio.setAttribute('controls','controls');
                        // audio.appendChild(mainaudio);
                        console.log(URL.createObjectURL(blob));
                        console.log(blob)
                        // debugger;

                        //redo
                        var reader = new FileReader();
                        reader.readAsDataURL(blob);
                        reader.onloadend = function() {
                            var base64data = reader.result;
                            var urls= base64data;
                            //var urls=URL.createObjectURL(blob);
                            var formData = new FormData( );
                            formData.append("urls", urls);
                            //console.log(formData.get('urls'));
                            // var request = new XMLHttpRequest();
                            dataToSend={question_id:$('.question_id').val(),question_type:$('.question_type').val(),member_id:$('.member_id').val(),media_Res:URL.createObjectURL(blob)}
                            console.log(dataToSend)
                            debugger;
                            $.post("/mock/save",dataToSend,(res,status)=>{
                                console.log(res)
                                console.log(status)
                            });
                            // request.send(formData);


                        }

                        mainaudio.innerHTML='<source src="'+URL.createObjectURL(blob)+'"type="video/webm"/>';

                    }
                }
                recorder.start(100);
                isRecording = 1;
                setTimeout(() => {
                    isRecording = 0;
                    recorder.stop();
                }, 1000 * $('#question_resTime').html());
            });


            setInterval(function() {
                $('#question_resTime ').html($('#question_resTime').html() - 1);
                if ($('#question_resTime').html() == '-1') {
                    $('#question_resTime').hide();
                    $('.waves').hide();

                }
                setInterval(function() {
                    if ($('#question_resTime').html() == '-1') {
                        $('#save_form').submit();
                        if(isRecording) {
                            isRecording = 0;
                            recorder.stop();
                        }
                    }
                },1000);


            },1000);



        });




    </script>

    <%@ include file="/WEB-INF/views/component/admin-footer.jsp" %>


</body>
</html>