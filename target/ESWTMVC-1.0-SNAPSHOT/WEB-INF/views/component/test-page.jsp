<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

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

<style>
    .examsContent{

        padding:0px;
        margin:0px;
        height: 100%;
        min-height: 100%;

    }
</style>

    <!-- Website Title -->
    <title>Tesol speaking writing exams</title>
    <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js" crossorigin="anonymous"></script>
    <!-- Styles -->

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
        <div class="examsContent">
            <div class="card" style="width: inherit" >
                <div class="card-body">
                    <h5 class="card-title" style="text-align: center">Question Title</h5>
                    <div style="width: inherit" class="row">
                        <div class="col-md-5" style="text-align: center">
                            q
                        </div>
                        <div class="col-md-5" style="text-align: center">
                            as
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- end of header-content -->
</header> <!-- end of header -->
<!-- end of header -->







<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <p class="p-small">Copyright © Prof. Jungtae Kim, PCU </p>
            </div>
        </div>
    </div>
</div>


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
