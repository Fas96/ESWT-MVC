<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <c:set var="base" value="${pageContext.request.contextPath}"/>
    <!-- SEO Meta Tags -->
    <meta name="author" content="fas">


    <link rel="stylesheet"   href=  "<c:url value="${base}/resources/css/waves.css"/> ">
    <!-- Website Title -->
    <title>Tesol speaking writing exams</title>
    <!-- Styles -->
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >

    <link rel="stylesheet" href="<c:url value="${base}/resources/exam/css/bootstrap.min.css"  /> ">
    <link rel="stylesheet" href="<c:url value="${base}/resources/exam/css/toastr.min.css"  /> ">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,600,700"   >
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700,700i"  />
    <link rel="stylesheet" href="<c:url value="${base}/resources/exam/css/bootstrap.css"  /> ">
    <link rel="stylesheet" href="<c:url value="${base}/resources/exam/css/fontawesome-all.css" /> ">
    <link rel="stylesheet" href="<c:url value="${base}/resources/exam/css/swiper.css"  /> ">
    <link rel="stylesheet"  href="<c:url value="${base}/resources/exam/css/magnific-popup.css" /> ">
    <link rel="stylesheet" href="<c:url value="${base}/resources/exam/css/styles.css"  /> ">

    <!-- Favicon  -->
    <link rel="icon"  href="<c:url value="${base}/resources/exam/images/favicon.png"/> ">
    <style>
        .audio audio{
            outline: none;
            background: #0D47A1;
        }
        button{
            border-radius: 8px;
            font-size: 18px;
            padding: 4px;
        }
    </style>
</head>
<body data-spy="scroll" data-target=".fixed-top">

<!-- Preloader -->
<div class="spinner-wrapper">
    <div class="spinner">
        <div class="bounce1"></div>
        <div class="bounce2"></div>
        <div class="bounce3"></div>
        <div class="bounce1"></div>
        <div class="bounce2"></div>
        <div class="bounce3"></div>
    </div>
</div>
<!-- end of preloader -->

<!-- Navbar -->
<nav class="navbar navbar-expand-md navbar-dark navbar-custom fixed-top main_nav">
    <!-- Text Logo - Use this if you don't have a graphic logo -->
    <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Leno</a> -->

    <!-- Image Logo -->
    <a class="navbar-brand logo-image" href="${pageContext.request.contextPath}"><img  src="<c:url value="${base}/resources/exam/images/logo.JPG"/> "></a>

    <!-- Mobile Menu Toggle Button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-awesome fas fa-bars"></span>
        <span class="navbar-toggler-awesome fas fa-times"></span>
    </button>
    <!-- end of mobile menu toggle button -->

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link page-scroll" href="#header">HOME <span class="sr-only">(current)</span></a>
            </li>


            <li class="nav-item">
                <a class="nav-link page-scroll" id="user_name" href="" > <security:authentication property="principal.username"/><br> </a>
            </li>



        </ul>
        <span class="nav-item social-icons">
                <form method="post" action="/logout">
                    <input type="submit" value="Logout" class="btn-solid-reg">
                </form>
        </span>
    </div>
</nav> <!-- end of navbar -->
<!-- end of navbar -->


<!-- Header -->
<header id="header" class="header questiondplay">
    <div class="header-content">
    <div class="col-md-12 ">

        <c:set value="${displayQuestion}" var="d"/>

        <c:if test="${d==null}">
            <h1 style="color: #0b0b0b;text-align: center">Thank you for taking the test</h1>
        </c:if>

    </div> <!-- end of header-content -->
    </div>
</header> <!-- end of header -->
<!-- end of header -->



<div style="height: 90%; border: 1px solid lightslategray">
    <div style="height: inherit">


        <c:if test="${d!=null}">
            <div   style="width: inherit ">
                <div class="container question_prepclass text-xl-center" style="border-radius: 4px; border: 1px solid lightslategray">
      <div class="row">
          <div class="container question_prepclass text-center" >
              <div class="btn-toolbar mb-3 text-xl-center" role="toolbar" aria-label="Toolbar with button groups">
                  <div class="input-group text-xl-center">
                      <div class="input-group-prepend">
                          <div class="input-group-text" id="btnGroupAddon">Preparation Time</div>
                      </div>
                      <button type="button" id="question_prepTime"   class="btn-rounded m-2 p-3 btn-outline-info">${d.question_prepTime}</button>
                  </div>
              </div>

          </div>
<%--          <h1 class="col-lg-6 text-center">Preparation Time: <button type="button" id="question_prepTime"  class="btn-rounded m-2 p-3 btn-outline-info">${d.question_prepTime}</button></h1>--%>
         </div>
                        </div>
                        <form action="/student/main/test" method="POST" id="save_form" modelAttribute="answer" style="background: rgba(247, 247, 247, 0.8);border-radius: 4px; border: 1px solid lightslategray">

                            <div class="container">
                                <div style="background: #eaf7fe; border: 1px solid grey;border-radius: 6px;margin: 8px">
                                    <div class="row">
                                        <div class="col-lg-2"> <h5 class="text-center">${d.question_type}</h5></div><span style="color: #0b0b0b">|</span>

                                        <div class="col-lg-8"> <h5 class="text-center">${d.question_title}</h5></div>
                                    </div>
                                    <hr>
                                    <div class="row" ><h4 class="col-lg-10 text-center">${d.question_content}</h4> </div>
                                </div>
                                <div class="row">
                                    <input type="hidden"  class="question_type" name="question_type" value="${d.question_type}" path="question_type">
                                    <input type="hidden" name="question_id" class="question_id" value="${d.id}" path="question_id">
                                    <input type="hidden" name="member_id" class="member_id" value="${member_id}" path="member_id">

                                    <c:if test="${d.question_type=='WRITING' or d.question_type=='LISTENING'  or d.question_type=='READING' or d.question_type=='SPEAKING'}">
                                        <c:if test="${d.question_type!=null}">
                                            <div class="col-lg-6 text-center">
                                                <c:if test="${d.question_media!=null}">
                                                    <img style="height: 500px;width: inherit" src="<spring:url value='/resources/images/${d.question_media}'/>"/><br/>
                                                </c:if>
                                            </div>
                                        </c:if>
                                    </c:if>
                                    <c:if test="${d.question_type=='SPEAKING' or d.question_type=='READING'}">
                                        <div class="col-lg-6 text-center" style="height: inherit;">
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
                                        <div class="col-lg-6 text-center" style="height: inherit">
                                            <br/><textarea path="text_res" style="height: 90%" placeholder="answer field " class="form-control text_res" name="text_res"></textarea>
                                        </div>
                                    </c:if>

                                    <div class="col-lg-12 text-center">
                                        <button type="button" id="question_resTime"   class="btn-rounded m-2 p-3 btn-outline-info">${d.question_resTime}</button>
                                    </div>

                                </div>
                            </div>
                        </form>
                    </div>

        </c:if>
    </div>

</div>
<footer class="bg-light text-center text-lg-start">
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(46, 42, 44, 0.8)">
        © 2021 Copyright
        <a class="text-light" href="https://pcu.ac.kr/"> Prof. Jungtae Kim, PCU</a>
    </div>
    <!-- Copyright -->
</footer>

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

            $.post( "/student/main/test", {question_id:$(".question_id").val() ,__RequestVerificationToken: token,question_type: $(".question_type").val(),member_id:$(".member_id").val(), text_res:"",media_res: file }).done(function() {
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


<!-- Scripts -->
<script src="<c:url value="${base}/resources/exam/js/jquery.min.js"/> "></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
<script src="<c:url value="${base}/resources/exam/js/popper.min.js"/> "></script> <!-- Popper tooltip library for Bootstrap -->
<script src="<c:url value="${base}/resources/exam/js/bootstrap.min.js"/> "></script> <!-- Bootstrap framework -->
<script src="<c:url value="${base}/resources/exam/js/jquery.easing.min.js"/> "></script> <!-- jQuery Easing for smooth scrolling between anchors -->
<script src="<c:url value="${base}/resources/exam/js/swiper.min.js"/> "></script> <!-- Swiper for image and text sliders -->
<script src="<c:url value="${base}/resources/exam/js/jquery.magnific-popup.js"/> "></script> <!-- Magnific Popup for lightboxes -->
<script src="<c:url value="${base}/resources/exam/js/morphext.min.js"/> "></script> <!-- Morphtext rotating text in the header -->
<script src="<c:url value="${base}/resources/exam/js/validator.min.js"/> "></script> <!-- Validator.js - Bootstrap plugin that validates forms -->
<script src="<c:url value="${base}/resources/exam/js/scripts.js"/> "></script> <!-- Custom scripts -->
</body>
</html>
