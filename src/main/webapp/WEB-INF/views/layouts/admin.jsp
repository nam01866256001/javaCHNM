<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
    prefix="decorator" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
   
    
    
    <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
    <meta name="author" content="Creative Tim">
    <title>Trà sữa CHNM | AdminManage</title>
    <!-- Favicon -->
    <link rel="icon" href="<c:url value="/template/templateAdmin/assets/img/brand/favicon.png" />" type="image/png">

    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <!-- Icons -->
    <link rel="stylesheet" href="<c:url value="/template/templateAdmin/assets/vendor/nucleo/css/nucleo.css" />" type="text/css">
    <link rel="stylesheet" href="<c:url value="/template/templateAdmin/assets/vendor/fortawesome/fontawesome-free/css/all.min.css" />" type="text/css">
    <!-- Page plugins -->
    <!-- Argon CSS -->
    <link rel="stylesheet" href="<c:url value="/template/templateAdmin/assets/css/argon.css?v=1.2.0" />" type="text/css">
    <link href="<c:url value="/template/templateAdmin/assets/css/stylePaginate.css" />" rel="stylesheet" />
    <script src="<c:url value="/template/templateAdmin/Scripts/Scripts.js" />"></script>

   
</head>

<body>

		<c:if test="${not empty LoginInforAdmin }">
      <%@include file ="/WEB-INF/views/layouts/admin/header.jsp" %>
		</c:if>
	<decorator:body />
		<c:if test="${not empty LoginInforAdmin }">
	<%@include file ="/WEB-INF/views/layouts/admin/menu.jsp" %>
		</c:if>
    <!-- Argon Scripts -->
    <!-- Core -->
    <script src="<c:url value="/template/templateAdmin/assets/vendor/jquery/dist/jquery.min.js" />"></script>
    <script src="<c:url value="/template/templateAdmin/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js" />"></script>
    <script src="<c:url value="/template/templateAdmin/assets/vendor/js-cookie/js.cookie.js" />"></script>
    <script src="<c:url value="/template/templateAdmin/assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js" />"></script>
    <script src="<c:url value="/template/templateAdmin/assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js" />"></script>
    <!-- Optional JS -->
    <script src="<c:url value="/template/templateAdmin/assets/vendor/chart.js/dist/Chart.min.js" />"></script>
    <script src="<c:url value="/template/templateAdmin/assets/vendor/chart.js/dist/Chart.extension.js" />"></script>
    <!-- Argon JS -->
    <script src="<c:url value="/template/templateAdmin/assets/js/argon.js?v=1.2.0" />"></script>
    <!-- @*ckfinder*@ -->
    <script src="<c:url value="/template/templateAdmin/ckfinder/ckfinder.js" />"></script>
    <!-- @*ckeditor*@ -->
    <script src="<c:url value="/template/templateAdmin/ckeditor/ckeditor.js" />"></script>
    <script src="~/Content/ScriptImg.js"></script>
    <!-- @RenderSection("jsFooter", required: false);
    @*paginate*@ -->
    
   <!--  @*datepicker*@ -->
    <script src="<c:url value="/template/templateAdmin/assets/vendor/moment.min.js" />"></script>
    <script src="<c:url value="/template/templateAdmin/assets/vendor/bootstrap-datetimepicker.js" />"></script>
    <script src="<c:url value="/template/templateAdmin/datepicker.js" />"></script>
</body>

</html>