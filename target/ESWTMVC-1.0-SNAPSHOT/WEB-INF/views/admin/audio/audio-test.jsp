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
                            <h4>Audio Testing</h4>

                        </div>
                    </div>
                </div>
            </div>
            <!-- row -->
            <!-- Toastr -->
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title"><div class="btn-group">
                                    <button type="button" class="btn btn-primary  " id="record">Record</button>
                                    <button type="button" class="btn btn-warning  " id="stopRecord">Stop record</button>
                                </div></h4>
                        </div>
                        <div class="card-body">
                            <button type="button" class="btn btn-info mb-2  mr-2 hidden infClass" id="toastr-info-top-right">Info</button>

                            <button type="button" class="btn btn-danger mb-2  mr-2 hidden erClass" id="toastr-danger-top-right">Error</button>
                            <audio id=recordedAudio></audio>
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
    <!-- audio recording -->
    <script type="text/javascript">
        navigator.mediaDevices.getUserMedia({audio:true})
            .then(stream => {handlerFunction(stream)})


        function handlerFunction(stream) {
            rec = new MediaRecorder(stream);
            rec.ondataavailable = e => {
                audioChunks.push(e.data);
                if (rec.state == "inactive"){

                    let blob = new Blob(audioChunks,{type:'audio/mpeg-3'});
                    recordedAudio.src = URL.createObjectURL(blob);
                    recordedAudio.controls=true;
                    recordedAudio.autoplay=true;
                    sendData(blob)
                }
            }
        }
        function sendData(data) {}

        record.onclick = e => {
            $('.infClass').click();

            console.log('I was infClass  clicked')
            record.disabled = true;
            record.style.backgroundColor = "blue"
            stopRecord.disabled=false;
            audioChunks = [];
            rec.start();
        }
        stopRecord.onclick = e => {
            console.log("I was erClass clicked")
            $('.erClass').click();
            record.disabled = false;
            stop.disabled=true;
            record.style.backgroundColor = "red"
            rec.stop();
        }
    </script>

<%@ include file="/WEB-INF/views/component/admin-footer.jsp" %>


</body>
</html>