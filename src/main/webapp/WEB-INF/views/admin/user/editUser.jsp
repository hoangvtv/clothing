<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<base href="${pageContext.servletContext.contextPath}/">

   <%@include file="/WEB-INF/views/admin/common/common_css.jsp"%>
        	<%@include file="/WEB-INF/views/admin/common/sidebar.jsp"%>          
            <div class="ec-page-wrapper">
                <%@include file="/WEB-INF/views/admin/common/header.jsp"%>
                <div class="ec-content-wrapper">
                    <div class="content">
                    
                    <div class="breadcrumb-wrapper d-flex align-items-center justify-content-between">
                        <div>
                            <h1>Chỉnh sửa thông tin</h1>
                            <p class="breadcrumbs"><span><a href="admin/dashboard.htm">Trang chủ</a></span>
                                <span><i class="mdi mdi-chevron-right"></i></span>Chỉnh sửa thông tin</p>
                        </div>
                        <div>
                            <a href="admin/listUser.htm" class="btn btn-primary"> Xem toàn bộ
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="card card-default">
                                <div class="card-header card-header-border-bottom">
                                    <h2>Chỉnh sửa thông tin</h2>
                                </div>
                                
                                <div class="card-body">
                                    <div class="row ec-vendor-uploads">
                                        <div class="row g-3" action="admin/newUser.htm">
                                            
                                            
                                            <div class="h4 text-uppercase text-center">
												<c:if test="${edition == 1 }">
														Sửa thông tin người dùng
												</c:if>
												<c:if test="${edition == 2 }">
														Sửa thông tin cá nhân
												</c:if>
											</div>
											${message1 }
											<c:if test="${not empty message}">			
											  	<c:choose>
													<c:when test="${message == 0}">
														<div class="col-sm-8 alert alert-danger" role="alert">
														Cập nhật thất bại!
														<button type="button" class="rem" data-dismiss="alert" aria-label="Close">&times;</button>
														</div>
													</c:when>
													<c:when test="${message == 1}">
														<div class="col-sm-8 alert alert-success alert-dismissible" role="alert">
														Cập nhật thành công!
														<button type="button" class="rem" data-dismiss="alert" aria-label="Close">&times;</button>
														</div>
													</c:when>
													<c:when test="${message == 2}">
														<div class="col-sm-8 alert alert-danger alert-dismissible" role="alert">
														Lưu hình ảnh thất bại!
														<button type="button" class="rem" data-dismiss="alert" aria-label="Close">&times;</button>
														</div>
													</c:when>
												</c:choose>		  	
											</c:if>
                                            
                                            
                                            <form:form method="post" modelAttribute="user" enctype="multipart/form-data">
												<div class="row my-3">
										    		<label class="col-sm-3 col-form-label text-end">ID </label>
										    		<div class="col-sm-8">
										      			<form:input path="id" type="text" class="form-control" readonly="true"/>
										    		</div>
									  			</div>
											
												<div class="row my-3">
										    		<label class="col-sm-3 col-form-label text-end">Tên đăng nhập <label style="color: red;">*</label></label>
										    		<div class="col-sm-8">
										      			<form:input path="username" type="text" class="form-control" required="true"/>
										      			<label class="mb-1">
															<form:errors path="username" cssClass="errors" />
														</label>
										    		</div>
									  			</div>
									  			
									  			<div class="row my-3">
										    		<label class="col-sm-3 col-form-label text-end">Họ <label style="color: red;">*</label></label>
										    		<div class="col-sm-8">
										      			<form:input path="lastName" type="text" class="form-control" required="true"/>
										      			<label class="mb-1">
															<form:errors path="lastName" cssClass="errors" />
														</label>
										    		</div>
									  			</div>
									  			
									  			<div class="row my-3">
										    		<label class="col-sm-3 col-form-label text-end">Tên <label style="color: red;">*</label></label>
										    		<div class="col-sm-8">
										      			<form:input path="firstName" type="text" class="form-control" required="true"/>
										      			<label class="mb-1">
															<form:errors path="firstName" cssClass="errors" />
														</label>
										    		</div>
									  			</div>
									  			
									  			<div class="row my-3">
										    		<label class="col-sm-3 col-form-label text-end">Ngày tạo</label>
										    		<div class="col-sm-8">
										      			<form:input path="registrationDate" type="text" class="form-control" readonly="true"/>
										    		</div>
									  			</div>  			
									  			
									  			<div class="row my-3">
										    		<label class="col-sm-3 col-form-label text-end">Số điện thoại <label style="color: red;">*</label></label>
										    		<div class="col-sm-8">
										      			<form:input path="phone" type="text" class="form-control" required="true"/>
										      			<label class="mb-1">
															<form:errors path="phone" cssClass="errors" />
														</label>
										    		</div>
									  			</div>
									  			
									  			<div class="row my-3">
										    		<label class="col-sm-3 col-form-label text-end">Email <label style="color: red;">*</label></label>
										    		<div class="col-sm-8">
										      			<form:input path="email" type="text" class="form-control" required="true"/>
										      			<label class="mb-1">
															<form:errors path="email" cssClass="errors" />
														</label>
										    		</div>
									  			</div>
									  			
									  			<div class="row mb-3">
										    		<label class="col-sm-3 form-label text-end">Ảnh đại diện</label>
										    		<div class="col-sm-8">
										    			<input name="file" class="form-control" id="formFileSm" type="file" accept="image/*" onchange="preview()">
										    			<img id="img" class="rounded" src="${user.image }"/>
										    			<form:input path="image" type="hidden" class="form-control"/>	
										    		</div>
									  			</div>
									  			 
									  			<c:if test="${edition == 1}">
									  				<div class="row mb-3">
											    		<label class="col-sm-3 col-form-label text-end">Tỉnh/Thành phố </label>
											    		<div class="col-sm-8">
											      			<form:input path="address.ward.district.province.name" type="text" class="form-control" readonly="true"/>
											    		</div>
										  			</div>
										  			
													<div class="row mb-3">
											    		<label class="col-sm-3 col-form-label text-end">Quận/Huyện</label>
											    		<div class="col-sm-8">
											      			<form:input path="address.ward.district.name" type="text" class="form-control" readonly="true"/>
											    		</div>
										  			</div>
										  		
										  			<div class="row mb-3">
											    		<label class="col-sm-3 col-form-label text-end">Phường/Xã</label>
											    		<div class="col-sm-8">
											      			<form:input path="address.ward.name" type="text" class="form-control" readonly="true"/>
											    		</div>
										  			</div>
										  			 
										  			<div class="row mb-3">
											    		<label class="col-sm-3 col-form-label text-end">Địa chỉ</label>
											    		<div class="col-sm-8">
											    			<form:textarea readonly="true" path="address.specificAddress" class="form-control" id="exampleFormControlTextarea1" rows="3"/>
											    		</div>
										  			</div>
									  				
										  			<div class="row mb-3">
											    		<label class="col-sm-3 col-form-label text-end">Tình trạng</label>
											    		<div class="col-sm-8 pt-2">	    			
											    			<div class="form-check form-check-inline">
																<form:radiobutton path="status" class="form-check-input" value="1" label="Hoạt động"/>
															</div>
															<div class="form-check form-check-inline">
																<form:radiobutton path="status" class="form-check-input" value="0" label="Ngưng hoạt động"/>
															</div>
											    		</div>
										  			</div>  			
									  			</c:if>
									  			
									  			<form:input path="password" type="hidden" class="form-control"/>
									  			<form:input path="permission.id" type="hidden" class="form-control"/>
									  			<form:input path="address.id" type="hidden" class="form-control"/>  			
												
												<c:if test="${edition == 2 }">
													<form:input path="status" type="hidden" class="form-control"/>  
													<form:form method="post" modelAttribute="address">
														 
														<div class="row mb-3">
												    		<label class="col-sm-3 col-form-label text-end">Tỉnh/Thành phố</label>
												    		<div class="col-sm-8">
												      			<form:select id="province" path="ward.district.province.id" class="form-select" aria-label="Default select example">
																	<%-- <form:option value="Open this select menu"/> --%>
																	<form:options items="${provinces }" itemValue="id" itemLabel="name"/>
																</form:select>
												    		</div>
											  			</div>
											  			
														<div class="row mb-3">
												    		<label class="col-sm-3 col-form-label text-end">Quận/Huyện</label>
												    		<div class="col-sm-8">
												      			<form:select id="district" path="ward.district.id" class="form-select" aria-label="Default select example">
																	<%-- <form:option value="Open this select menu"/> --%>
																	<form:options items="${districts }" itemValue="id" itemLabel="name"/>
																</form:select>
												    		</div>
											  			</div>
											  		
											  			<div class="row mb-3">
												    		<label class="col-sm-3 col-form-label text-end">Phường/Xã</label>
												    		<div class="col-sm-8">
												      			<form:select id="ward" path="ward.id" class="form-select" aria-label="Default select example">
																	<%-- <form:option value="Open this select menu"/> --%>
																	<form:options items="${wards }" itemValue="id" itemLabel="name"/>
																</form:select>
												    		</div>
											  			</div>
											  			
											  			<div class="row mb-3">
												    		<label class="col-sm-3 col-form-label text-end">Địa chỉ </label>
												    		<div class="col-sm-8">
												    			<form:textarea path="specificAddress" type="text" class="form-control" rows="3" required="true"/>
												    		</div>
											  			</div>
											  			
											  			<div class="text-center mb-3">
												    		<button type="submit" class="btn btn-primary bg-gradient text-white">Cập nhật</button>
											  			</div>
													</form:form>
												</c:if>
												
												<c:if test="${edition == 1 }">
													<div class="text-center mb-3">
													    		<button type="submit" class="btn btn-primary bg-gradient text-white">Cập nhật</button>
										  			</div>
									  			</c:if>
											</form:form>
																             
                                            
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
            <%-- <jsp:include page="/views/admin/common/footer.jsp"/> --%>
        </div>
    </div>
     <%@include file="/WEB-INF/views/admin/common/common_js.jsp"%>
    
    </body>
</html>
                    