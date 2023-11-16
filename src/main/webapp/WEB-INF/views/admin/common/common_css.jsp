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
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Ekka - Admin Dashboard">
	
	
    <title>Admin Dashboard</title>
    <base href="${pageContext.servletContext.contextPath}/">
    
    <!-- GOOGLE FONTS -->
	<link rel="preconnect" href="https://fonts.googleapis.com/">
	<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;300;400;500;600;700;800&amp;family=Poppins:wght@300;400;500;600;700;800;900&amp;family=Roboto:wght@400;500;700;900&amp;display=swap" rel="stylesheet">
	
	<!-- STYLE -->
	<link href="<c:url value='resources/assets/dist/fontawesome.min.css'/>" rel="stylesheet"/> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.12.6/css/selectize.bootstrap3.min.css" integrity="sha256-ze/OEYGcFbPRmvCnrSeKbRTtjG4vGLHXgOqsyLFTRjg=" crossorigin="anonymous" />
	<link href="<c:url value='resources/assets/admin/css/materialdesignicons.min.css'/>" rel="stylesheet"/>
	
	<!-- PLUGINS CSS STYLE -->
	<link href="<c:url value='resources/assets/admin/plugins/daterangepicker/daterangepicker.css'/>" rel="stylesheet"/>
	<link href="<c:url value='resources/assets/admin/plugins/simplebar/simplebar.css'/>" rel="stylesheet"/>
	<link href="<c:url value='resources/assets/admin/plugins/slick/slick.min.css'/>" rel="stylesheet"/>
	<link href="<c:url value='resources/assets/admin/plugins/swiper/swiper-bundle.min.css'/>" rel="stylesheet"/>
	
	<link href="<c:url value='resources/assets/admin/plugins/data-tables/datatables.bootstrap5.min.css'/>" rel="stylesheet"/>
	<link href="<c:url value='resources/assets/admin/plugins/data-tables/responsive.datatables.min.css'/>" rel="stylesheet"/>
	
	<!-- Ekka CSS -->
	<link id="ekka-css" href="<c:url value='resources/assets/admin/css/ekka.css'/>" rel="stylesheet"/>
	
	<!-- FAVICON -->
	<link href="<c:url value='resources/assets/admin/img/favicon.png'/>" rel="stylesheet"/>
  
    
    
</head>

<body class="ec-header-fixed ec-sidebar-fixed ec-sidebar-light ec-header-light" id="body" onload="updateChart()">
<div class="wrapper">

