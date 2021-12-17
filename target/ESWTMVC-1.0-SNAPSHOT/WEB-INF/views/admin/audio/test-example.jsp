<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>

    <%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <title>Admin Page</title>

    <%@ include file="/WEB-INF/views/component/admin-header.jsp" %>


    <style>
        .audio audio{
            outline: none;
            background: #0D47A1;
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

                    <div class="card-body">
                        <div class="compose-content ">
                            <div class="container question_prepclass"><div class="row">
                                <h1 class="col-lg-6 text-center">Preparation Time: <button type="button" id="question_prepTime"   class="btn-rounded m-2 p-3 btn-outline-info">${d.question_prepTime}</button></div>
                                </h1>
                            </div>
                            <form action="/admin/mock/save" method="POST" id="save_form" modelAttribute="answer">

                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-2"> <h5 class="text-center">${d.question_type}</h5></div>
                                        <div class="col-lg-8"> <h5 class="text-center">${d.question_title}</h5></div>
                                    </div>
                                    <div class="row"><h4 class="col-lg-10 text-center">${d.question_content}</h4> </div>
                                    <div class="row">
                                        <input type="hidden"  class="question_type" name="question_type" value="${d.question_type}" path="question_type">
                                        <input type="hidden" name="question_id" class="question_id" value="${d.id}" path="question_id">
                                        <input type="hidden" name="member_id" class="member_id" value="${member_id}" path="member_id">

                                                <c:if test="${d.question_type=='WRITING' or d.question_type=='LISTENING'  or d.question_type=='READING' or d.question_type=='SPEAKING'}">
                                                   <c:if test="${d.question_type!=null}">
                                                       <div class="col-lg-6 text-center">
                                                           <img height="400px" width="100%" src="<spring:url value='/resources/images/${d.question_media}'/>"/><br/>
                                                       </div>
                                                   </c:if>
                                                </c:if>
                                                <c:if test="${d.question_type=='SPEAKING' or d.question_type=='READING'}">
                                                    <div class="col-lg-6 text-center">
                                                        <div class="row">
                                                            <div class="loaderbody">
                                                                <div class="loader">Loading...</div>
                                                            </div>
                                                        </div>
                                                        <div class="row" style="padding: 10px;margin:10px">
                                                            <div class="audio" id="audio_div">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:if>
                                            <c:if test="${d.question_type=='LISTENING' or d.question_type=='WRITING' }">
                                            <div class="col-lg-6 text-center">
                                                <br/><textarea path="text_res" style="height: 100%" placeholder="answer field " class="form-control text_res" name="text_res"></textarea>
                                            </div>
                                            </c:if>

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
                                <p>2021 © ESWT. -
                                    <a href="http://fasgh.govt.kr/" target="_blank">fasgh.govt.kr</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script type="text/javascript">


        // window.onhashchange = function() {
        //     alert("user trynna switch")
        // }


        function readBlobAndSendToServer(blob) {
            //redo
            var reader = new FileReader();
            reader.readAsDataURL(blob);
            reader.onloadend =     function () {
                var base64data = reader.result;
                var urls = base64data;
                //var urls=URL.createObjectURL(blob);
                const file = base64data;


                // var jqxhr = $.post( "/mock/save", {question_id:$(".question_id").serialize() ,question_type: $(".question_type").serialize(),member_id:$(".member_id").serialize(), text_res:"",media_res: file }).done(function() {
                //         console.log( "second success" );}).fail(function() {
                //         alert( "error" );});
                var token = $('[name=__RequestVerificationToken]').val();

                $.post( "/admin/mock/save", {question_id:$(".question_id").val() ,__RequestVerificationToken: token,question_type: $(".question_type").val(),member_id:$(".member_id").val(), text_res:"",media_res: file }).done(function() {
                    console.log( "second success" );}).fail(function() {alert( "error" );});
            }



        }

        $(window).on('load',function() {
            $("#question_prepTime").show();
            $("#save_form").hide();
            setInterval(function() {
                $('#question_prepTime ').html($('#question_prepTime').html() - 1);
                if ($('#question_prepTime').html() == '-1') {
                    $("#save_form").show();
                    $("#question_prepTime").hide();
                    $(".question_prepclass").hide();
                    //run the function
                    runFormQuestionDisplay();

                }
            },1000);
            //get user audio
            const getAudio= function (){return navigator.mediaDevices.getUserMedia({audio:{echoCancellation:true, autoGainControl:true, noiseSuppression:true, latency: 0}})}
            const runResponseTimerAndSubmit=function () {
                setInterval(function() {
                    $('#question_resTime ').html($('#question_resTime').html() - 1);

                    if ($('#question_resTime').html() == '-1') {
                        $('#save_form').submit();
                    }},1000);
            }
            const runWaveDisplayForReadAndSpeak=function() {

                    $('.waves').show();
                    $(".text_res").hide()

                var device=getAudio()
                var audioArray=[]
                device.then(stream=>{
                    var recorder= new MediaRecorder(stream);
                    recorder.ondataavailable=e=>{
                        //adding the blob to array
                        audioArray.push(e.data);

                        if(recorder.state=='inactive'){
                            var blob=new Blob(audioArray,{type:'audio/mp3'});
                            console.log(blob)
                            // var audioDiv=$('#audio_div')
                            var mainAudio=document.createElement('audio')
                            mainAudio.setAttribute('controls',true);
                            mainAudio.setAttribute('preload', true);
                            mainAudio.setAttribute('type', 'audio/mp3');

                            mainAudio.innerHTML='<source src="'+URL.createObjectURL(blob)+'" type="audio/mp3"/>';
                            // alert(blob.size+"|"+blob.text())
                            $('#audio_div').append(mainAudio);
                            console.log(URL.createObjectURL(blob));

                            //read Blob and send to server
                            readBlobAndSendToServer(blob);

                        }
                    }
                    recorder.start(100);
                    //sets how long the audio is gonna record
                    setTimeout(()=>{recorder.stop()},1000 * $('#question_resTime').html())
                })


                setInterval(function() {
                    $('#question_resTime ').html($('#question_resTime').html() - 1);

                    if ($('#question_resTime').html() == '-1') {
                        window.location.reload();
                    }},1000);
                // runResponseTimerAndSubmit();

            }

            const resize=function(){
                visualizer.width = visualizer.clientWidth*window.devicePixelRatio
                visualizer.height = visualizer.clientHeight*window.devicePixelRatio
            }

            const drawVisualizer= function(){
                requestAnimationFrame(drawVisualizer)
                const bufferlength= analizernode.frequencyBinCount
                const dataArray = new Uint8Array(bufferlength)
                analizernode.getByteFrequencyData(dataArray)
                const width = visualizer.width
                const height = visualizer.height
                const barwidth = width/bufferlength
                const canvasContext= visualizer.getContext('2d')
                canvasContext.clearRect(0,0,width,height)

                dataArray.forEach((item,index)=>{
                    const y  = item/255 * height
                    const x = barwidth*index
                    canvasContext.fillStyle =`hsl( ${ y / height * 400},100%,50%)`
                    canvasContext.fillRect(x,height-y,barwidth/2,y)
                })

            }
            //Displays the form questions
            const runFormQuestionDisplay=function () {


                // if not writing
                if($('.question_type').val()!='WRITING' ){
                    $('.waves').hide();
                    //display waves for only speaking questions
                    if($('.question_type').val()=='SPEAKING' || $('.question_type').val()=='READING'){
                        runWaveDisplayForReadAndSpeak()
                    }else{
                        //listening
                        runResponseTimerAndSubmit();
                    }

                   }else {
                    //writing
                    runResponseTimerAndSubmit();
                }
            }
        });





    </script>

    <%@ include file="/WEB-INF/views/component/admin-footer.jsp" %>


</body>
</html>