<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.80.0">
<title>SHOPOO</title>

<base href="${pageContext.servletContext.contextPath}/">

	<!-- Font CSS -->
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	
		<!-- Font Awesome -->
	<link href="<c:url value='resources/assets/dist/fontawesome.min.css'/>" rel="stylesheet"/> 
	<link rel="stylesheet" href="<c:url value='resources/assets/dist/all.min.css'/>" />
	
	
	<!-- Vendor CSS (Bootstrap & Icon Font) -->
	<link href="<c:url value='resources/assets/css/vendor/bootstrap.min.css'/>" rel="stylesheet">
	

	<!-- Plugins CSS (All Plugins Files) -->
	<link href="<c:url value='resources/assets/css/plugins/swiper-bundle.min.css'/>" rel="stylesheet">
	<link href="<c:url value='resources/assets/css/plugins/font-awesome.min.css'/>" rel="stylesheet">
	<link href="<c:url value='resources/assets/css/plugins/fancybox.min.css'/>" rel="stylesheet">
	<link href="<c:url value='resources/assets/css/plugins/nice-select.css'/>" rel="stylesheet">
	
	<link href="<c:url value='resources/assets/dist/css/bootstrap.min.css'/>" rel="stylesheet">
	<script src="<c:url value='resources/assets/dist/js/bootstrap.min.js'/>"></script>
	
	<%-- <script type="text/javascript" src="<c:url value='resources/ckeditor/ckeditor.js'/>"></script> --%>
	<link href="<c:url value='resources/assets/dist/myCss.css'/>" rel="stylesheet">
	<link href="<c:url value='resources/assets/dist/main.css'/>" rel="stylesheet">
	<link href="<c:url value='resources/assets/dist/ImageUpload.css'/>" rel="stylesheet">

	<!-- Style CSS -->
	<link href="<c:url value='resources/assets/css/style.min.css'/>" rel="stylesheet">
	
	<style >
		.page-item.active >a{
			border-radius: 100% !important;
		}
		.page-item > .page-link  >i {
			margin-top: 50%;
			transform: translateY(-50%);
		}
		
		
	</style>
	
	

</head>
<body>
<%@include file="/WEB-INF/views/include/search.jsp"%>
<div class="wrapper">
	<main class="main-content">

