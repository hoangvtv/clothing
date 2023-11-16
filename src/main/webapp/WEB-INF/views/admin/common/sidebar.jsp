<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<div class="ec-left-sidebar ec-bg-sidebar">
  <div id="sidebar" class="sidebar ec-sidebar-footer">

    <div class="ec-brand">
      <a href="admin/dashboard.htm" title="Ekka">
        <img class="ec-brand-icon" src="resources/assets/admin/img/logo/ec-site-logo.png" alt="" />
        <span class="ec-brand-name text-truncate">Shopoo</span>
      </a>
    </div>

    <!-- begin sidebar scrollbar -->
    <div class="ec-navigation" data-simplebar>
      <!-- sidebar menu -->
      <ul class="nav sidebar-inner" id="sidebar-menu">
        <!-- Dashboard -->
        <li class="active">
          <a class="sidenav-item-link" href="admin/dashboard.htm">
            <i class="mdi mdi-view-dashboard-outline"></i>
            <span class="nav-text">Dashboard</span>
          </a>
          <hr>
        </li>

        <!-- Users -->
        <li class="has-sub">
          <a class="sidenav-item-link" href="admin/listUser.htm">
            <i class="mdi mdi-account-group"></i>
            <span class="nav-text">Quản lý <br> tài khoản</span>
          </a>
        </li>
        <!-- Category -->
        <li class="has-sub">
          <a class="sidenav-item-link" href="admin/listCategory.htm">
            <i class="mdi mdi-dns-outline"></i>
            <span class="nav-text">Quản lý <br> danh mục <br> sản phẩm</span>
          </a>
        </li>

        <!-- Products -->
        <li class="has-sub">
          <a class="sidenav-item-link" href="admin/listProduct.htm">
            <i class="mdi mdi-palette-advanced"></i>
            <span class="nav-text">Quản lý <br> sản phẩm</span>
          </a>
        </li>

        <!-- Orders -->
        <li class="has-sub">
          <a class="sidenav-item-link" href="admin/listOrder/1.htm">
            <i class="mdi mdi-cart"></i>
            <span class="nav-text">Quản lý <br> đơn hàng</span>
          </a>
        </li>


        <!-- Brands -->
        <li>
          <a class="sidenav-item-link" href="admin/listBrand.htm">
            <i class="mdi mdi-tag-faces"></i>
            <span class="nav-text">Quản lý <br> thương hiệu</span>
          </a>
        </li>

        
      </ul>
    </div>
  </div>
</div>




