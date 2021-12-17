<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.Base64" %>
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
                            <h4>Audio Files List</h4>

                        </div>
                    </div>
                </div>
            </div>
            <!-- row -->
            <!-- /# row -->
            <section id="main-content">
                <div class="row">


                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="bootstrap-data-table-panel">
                                <div class="table-responsive">
                                    <c:choose>
                                    <c:when test="${fn:length(answersWithAudio) gt 0 }">
                                    <table   class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                            <th>USERID</th>
                                            <th>DOWNLOAD</th>
                                            <th>QUESTION-ID</th>
                                            <th>QUESTION-TYPE</th>
                                            <th>MEDIA-RES</th>
                                            <th>ACTION</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${answersWithAudio}" var="a">
                                            <c:url var="updateLink" value="/audio/edit">
                                                <c:param name="answerId" value="${a.id}" />
                                            </c:url>

                                            <c:url var="deleteLink" value="/audio/delete">
                                                <c:param name="answerId" value="${a.id}" />
                                            </c:url>

                                            <tr>
                                                <td>${a.member_id}</td>
                                                <td><a href ="${a.media_res }" download="member_${a.member_id}_question_${a.question_id}.mp3" >Download</a>
                                                    |<input type="checkbox" name="member_${a.member_id}_question_${a.question_id}.mp3" value="${a.media_res }">
                                                </td>
                                                <td>${a.question_id}</td>
                                                <td>${a.question_type}</td>
                                                <td><audio width="400" height="38" controls>
                                                    <source src="${a.media_res }" type="audio/mpeg">
                                                </audio>
                                                </td>

                                                <td><a href="${updateLink}">Update</a> | <a
                                                        href="${deleteLink}"
                                                        onclick="if(!(confirm('Are you sure want to delete this Question permanently?'))) return false">Delete</a>
                                                </td>
                                            </tr>

                                        </c:forEach>
                                        </tbody>
                                    </table>
                                    <div class="col-lg-12 ">
                                        <button type="button" onclick="downloadAllChecked()" class="btn btn-outline-info float-right">Download Audio&#9745;</button>
                                    </div>
                                    </c:when>
                                        <c:otherwise>
                                            No Audio to Display! Students Did not present audio
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

<%@ include file="/WEB-INF/views/component/admin-footer.jsp" %>
 <script type="text/javascript">


     const downloadAllChecked=function () {
         let checkbox = document.querySelectorAll('input[type=checkbox]')
         let downloadUrl=[]
         let downloadNames=[]


         for (var i = 0; i < checkbox.length; i++) {
                 if (checkbox[i].checked) {
                     // console.log(checkbox[i].value)
                     downloadUrl.push(checkbox[i].value)
                     downloadNames.push(checkbox[i].name)
                 }
         }


         if(downloadUrl.length>0){
         //download all the checked
         downloadAll(downloadUrl,downloadNames)
         }else{
             alert("Audio Checkbox need to be checked for download!!")
             return false;
         }

     }

     function downloadAll(urls,names) {
         var link = document.createElement('a');

         link.style.display = 'none';

         document.body.appendChild(link);

         for (var i = 0; i < urls.length; i++) {
             link.setAttribute('download', names[i]);
             link.setAttribute('href', urls[i]);
             link.click();
         }

         document.body.removeChild(link);
     }







 </script>


</body>
</html>