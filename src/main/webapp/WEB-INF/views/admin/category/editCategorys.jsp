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
                            <h1>Chỉnh sửa danh mục sản phẩm</h1>
                            <p class="breadcrumbs"><span><a href="admin/dashboard.htm">Trang chủ</a></span>
                                <span><i class="mdi mdi-chevron-right"></i></span>Danh mục sản phẩm</p>
                        </div>
                        <div>
                            <a href="admin/listCategory.htm" class="btn btn-primary"> Xem toàn bộ
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="card card-default">
                                <div class="card-header card-header-border-bottom">
                                    <h2>Chỉnh sửa danh mục sản phẩm</h2>
                                </div>
                                
                                <div class="card-body">
                                    <div class="row ec-vendor-uploads">
                                        <div class="row g-3" action="admin/newCategory.htm">
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
                                            <form:form method="post" modelAttribute="category" enctype="multipart/form-data">
													<div class="row my-3">
											    		<label class="col-sm-3 col-form-label text-end">Mã loại sản phẩm: </label>
											    		<div class="col-sm-8">
											      			<form:input path="id" type="text" class="form-control" readonly="true"/>
											    		</div>
										  			</div>
												
													<div class="row my-3">
											    		<label class="col-sm-3 col-form-label text-end">Tên loại sản phẩm: </label>
											    		<div class="col-sm-8">
											      			<form:input path="name" type="text" class="form-control" required="true"/>
											      			<label class="mb-1">
																<form:errors path="name" cssClass="errors" />
															</label>
											    		</div>
										  			</div>
										  			
										  			<div class="row mb-3">
											    		<label class="col-sm-3 form-label text-end">Hình ảnh:</label>
											    		<div class="col-sm-8">
											    			<input name="file" class="form-control" id="formFileSm" type="file" accept="image/*" onchange="preview()">
											    			<img id="img" class="rounded" src="resources/images/categories/${category.image }" style="width: 300; height:350;"/>
											    		</div>
										  			</div>
													
										  			<div class="row mb-3">
											    		<label class="col-sm-3 col-form-label text-end">Ghi chú: </label>
											    		<div class="col-sm-8">
											    			<form:textarea path="note" type="text" class="form-control" rows="3"/>	
											    			<label class="mb-1">
																<form:errors path="note" cssClass="errors" />
															</label>    			
											    		</div>
										  			</div>
										  			<form:input path="image" type="hidden" class="form-control"/>	 
										  			<div class="text-center mb-3">
											    		<button type="submit" class="btn btn-primary bg-gradient text-white">Cập nhật</button>
										  			</div>
													
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
                    