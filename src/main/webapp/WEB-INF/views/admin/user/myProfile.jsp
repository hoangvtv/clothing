<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<base href="${pageContext.servletContext.contextPath}/">

   <%@include file="/WEB-INF/views/admin/common/common_css.jsp"%>
        	<%@include file="/WEB-INF/views/admin/common/sidebar.jsp"%>          
            <div class="ec-page-wrapper">
                <%@include file="/WEB-INF/views/admin/common/header.jsp"%>
                <div class="ec-content-wrapper">
                    <div class="content">
	
					<div class="breadcrumb-wrapper breadcrumb-contacts">
                            <div>
                                <h1>User Profile</h1>
                                <p class="breadcrumbs"><span><a href="/admin/dashboard.htm">Home</a></span>
                                    <span><i class="mdi mdi-chevron-right"></i></span>Profile
                                </p>
                            </div>
					        <div class="my-3 me-5 text-center">
								<a class="btn btn-outline-warning" href="admin/editProfile.htm" role="button">Chỉnh sửa</a>
								<a class="btn btn-outline-dark" href="admin/myProfile/changePassword.htm" role="button">Đổi mật khẩu</a>
							</div>
                            <div>
                                <a href="admin/listUser.htm" class="btn btn-primary">Danh sách người dùng</a>
                            </div>
                            

                        </div>
                        <div class="card bg-white profile-content">
                            <div class="row">
                                <div class="col-lg-4 col-xl-3">
                                    <div class="profile-content-left profile-left-spacing">
                                        <div class="text-center widget-profile px-0 border-0">
                                            <div class="card-img mx-auto rounded-circle">
                                                <img src="${sessionScope.admin.image}" alt="user image">
                                            </div>
                                            <div class="card-body">
                                                <h4 class="py-2 text-dark">${sessionScope.admin.firstName}<span> ${sessionScope.admin.lastName}</span></h4>
                                                <p>${sessionScope.admin.email}</p>
                                            </div>
                                        </div>

                                        <div class="d-flex justify-content-between ">
                                            <div class="text-center pb-4">
                                                <h6 class="text-dark pb-2">${user.totalBought}</h6>
                                                <p>Sản phẩm đã mua</p>
                                            </div>

                                            <div class="text-center pb-4">
                                                <h6 class="text-dark pb-2">${user.totalWishListItem}</h6>
                                                <p>Sản phẩm yêu thích</p>
                                            </div>
                                        </div>

                                        <hr class="w-100">

                                        <div class="contact-info pt-4">
                                            <h5 class="text-dark">Thông tin liên hệ</h5>
                                            <p class="text-dark font-weight-medium pt-24px mb-2">Email</p>
                                            <p>${sessionScope.admin.email}</p>
                                            <p class="text-dark font-weight-medium pt-24px mb-2">Điện thoại</p>
                                            <p>${sessionScope.admin.phone}</p>
                                            <p class="text-dark font-weight-medium pt-24px mb-2">Username</p>
                                            <p>${sessionScope.admin.username}</p>
                                            <p class="text-dark font-weight-medium pt-24px mb-2">Địa chỉ</p>
                                            <p>${sessionScope.admin.address.specificAddress }, ${sessionScope.admin.address.ward.prefix} ${sessionScope.admin.address.ward.name}, ${sessionScope.admin.address.ward.district.prefix} ${sessionScope.admin.address.ward.district.name}, ${sessionScope.admin.address.ward.district.province.name}</p>
                                            <p class="text-dark font-weight-medium pt-24px mb-2">Ngày tạo tài khoản</p>
                                            <p>${sessionScope.admin.registrationDate }</p>
                                            <p class="text-dark font-weight-medium pt-24px mb-2">Trạng thái</p>
                                            <i id ="stat" class=" mdi mdi-checkbox-blank-circle mr-2" ></i>
                                            
                                            
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-8 col-xl-9">
                                    <div class="profile-content-right profile-right-spacing py-5">
                                        <ul class="nav nav-tabs px-3 px-xl-5 nav-style-border" id="myProfileTab" role="tablist">
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link active" id="profile-tab" data-bs-toggle="tab"
                                                        data-bs-target="#profile" type="button" role="tab"
                                                        aria-controls="profile" aria-selected="true">Profile</button>
                                            </li>
                                        </ul>
                                        <div class="tab-content px-3 px-xl-5" id="myTabContent">
                                            <div class="tab-pane fade show active" id="profile" role="tabpanel"
                                                 aria-labelledby="profile-tab">
                                                <div class="tab-widget mt-5">
                                              
                                              			
                                              			
                                                                                     
                                              			
                                              			
                                              
                                              
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="modal fade" id="modal-error" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
                                <div class="modal-content">
                                    <h3 class="modal-header border-bottom-0 d-flex justify-content-center">Thao tác bị lỗi, vui lòng thực hiện lại</h3>
                                    <div class="modal-footer px-4">
                                        <button type="button" class="btn btn-secondary btn-pill d-flex justify-content-center"
                                                data-bs-dismiss="modal">Thoát</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               <%--  <jsp:include page="/views/admin/common/footer.jsp"/> --%>
            </div>
        </div>
        <%@include file="/WEB-INF/views/admin/common/common_js.jsp"%>
        
        <script>
            $(window).on('load', function() {
                if((new URLSearchParams(window.location.search)).has("error") || ${error != null}){
                    $('#modal-error').modal('show');
                }
                
                var status = ${sessionScope.admin.status};
                responsive-data-table_paginate
    			if (status === true) {
    				document.getElementById("stat").innerHTML = "Hoạt động";
    				document.getElementById("stat").style.color = "green";
    			}
    			else {
    				document.getElementById("stat").innerHTML = "Đã khóa";
    				document.getElementById("stat").style.color = "red";
    			}
            });
            $('#form-add').submit(function (e){
                validateForm(e, `<%=request.getContextPath()%>`)
            })
            
            
            
        </script>
        <%-- <script src="<%=request.getContextPath()%>/assets/admin/js/validate/admin/user/user-validation.js"></script> --%>
    </body>
</html>