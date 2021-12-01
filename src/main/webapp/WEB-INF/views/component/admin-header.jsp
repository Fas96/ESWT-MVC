<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<%--<c:if test="${pageContext.request.getSession(true) == null}">--%>
<%--    <c:redirect url="/"/>--%>
<%--</c:if>--%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>ESWT|배재대</title>
    <c:set var="base" value="${pageContext.request.contextPath}"/>
    <link rel="stylesheet" href="<c:url value="${base}/resources/css/main.css"/> ">

    <!-- ================= Favicon ================== -->
    <!-- Standard -->
    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">

    <!-- Toastr -->
    <link rel="stylesheet" href="<c:url value="${base}/resources/css/lib/toastr/toastr.min.css"/> ">

    <link rel="stylesheet" href="<c:url value="${base}/resources/css/lib/sweetalert/sweetalert.css"/> ">
    <!-- Range Slider -->
    <link rel="stylesheet" href="<c:url value="${base}/resources/css/lib/rangSlider/ion.rangeSlider.css"/> ">
    <link rel="stylesheet" href="<c:url value="${base}/resources/css/lib/rangSlider/ion.rangeSlider.skinFlat.css"/> ">
    <!-- Bar Rating -->
    <link rel="stylesheet" href="<c:url value="${base}/resources/css/lib/barRating/barRating.css"/> ">
    <!-- Nestable -->
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/nestable/nestable.css"/> ">
    <!-- JsGrid -->
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/jsgrid/jsgrid-theme.min.css"/> ">
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/jsgrid/jsgrid.min.css"/> ">
    <!-- Datatable -->
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/data-table/dataTables.bootstrap.min.css"/> ">
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/data-table/buttons.bootstrap.min.css"/> ">
    <!-- Calender 2 -->
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/calendar2/pignose.calendar.min.css"/> ">
    <!-- Weather Icon -->
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/weather-icons.css"/> ">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/owl.carousel.min.css"/> ">
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/owl.theme.default.min.css"/> ">
    <!-- Select2 -->
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/select2/select2.min.css"/> ">
    <!-- Chartist -->
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/chartist/chartist.min.css"/> ">
    <!-- Calender -->
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/calendar/fullcalendar.css"/> ">

    <!-- Common -->
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/font-awesome.min.css"/> ">
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/themify-icons.css"/> ">
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/menubar/sidebar.css"/> ">
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/bootstrap.min.css"/> ">
    <link rel="stylesheet" href=  "<c:url value="${base}/resources/css/lib/helper.css"/> ">
    <link rel="stylesheet"   href=  "<c:url value="${base}/resources/css/style.css"/> ">
</head>
