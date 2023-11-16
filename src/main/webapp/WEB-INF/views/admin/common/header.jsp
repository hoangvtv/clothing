<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <base href="${pageContext.servletContext.contextPath}/"> --%>
<header class="ec-main-header" id="header">
    <nav class="navbar navbar-static-top navbar-expand-lg d-flex justify-content-between">
        <!-- Sidebar toggle button -->
        <button id="sidebar-toggler" class="sidebar-toggle"></button>
        <!-- navbar right -->
        <div class="navbar-right">
            <ul class="nav navbar-nav">
                <!-- User Account -->
                <li class="dropdown user-menu">
                    <button class="dropdown-toggle nav-link ec-drop" data-bs-toggle="dropdown"
                            aria-expanded="false">
                        <img src="${sessionScope.admin.image }" class="user-image" alt="User Image" />
                    </button>
                    <ul class="dropdown-menu dropdown-menu-right ec-dropdown-menu">
                        <li class="dropdown-header" style= "display: flex">
                            <img src="${sessionScope.admin.image}" class="img-circle" alt="User Image" />
                            <div class="">
                                ${sessionScope.admin.firstName} ${sessionScope.admin.lastName}<small class="pt-1">${sessionScope.admin.email}</small>
                            </div>
                        </li>
                        <li>
                            <a href="admin/myProfile.htm">
                                <i class="mdi mdi-account"></i> Tài khoản của tôi
                            </a>
                        </li>
                        <li class="right-sidebar-in">
                            <a href="javascript:0"> <i class="mdi mdi-settings-outline"></i> Cài đặt </a>
                        </li>
                        <li class="dropdown-footer">
                            <a href="logout.htm"> <i class="mdi mdi-logout"></i> Đăng xuất </a>
                        </li>
                    </ul>
                </li>
                <li class="right-sidebar-in right-sidebar-2-menu">
                    <i class="mdi mdi-settings-outline mdi-spin"></i>
                </li>
            </ul>
        </div>
    </nav>
</header>
