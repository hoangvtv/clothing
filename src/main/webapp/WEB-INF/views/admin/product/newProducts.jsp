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
                            <h1>Thêm sản phẩm</h1>
                            <p class="breadcrumbs"><span><a href="admin/dashboard.htm">Trang chủ</a></span>
                                <span><i class="mdi mdi-chevron-right"></i></span>Sản phẩm</p>
                        </div>
                        <div>
                            <a href="admin/listProduct.htm" class="btn btn-primary"> Xem toàn bộ
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="card card-default">
                                <div class="card-header card-header-border-bottom">
                                    <h2>Thêm sản phẩm</h2>
                                </div>
                                
                                <div class="card-body">
                                    <div class="row ec-vendor-uploads">
                                        <div class="row g-3" action="admin/newProduct.htm">
                                            <c:if test="${not empty message}">			
												  	<c:choose>
												  		<c:when test="${message == -1}">
															<div class="col-sm-8 alert alert-danger" role="alert">
															Các trường còn trống hoặc chưa chính xác!
															<button type="button" class="rem" data-dismiss="alert" aria-label="Close">&times;</button>
															</div>
														</c:when>
														<c:when test="${message == 0}">
															<div class="col-sm-8 alert alert-danger" role="alert">
															Thêm thất bại!
															<button type="button" class="rem" data-dismiss="alert" aria-label="Close">&times;</button>
															</div>
														</c:when>
														<c:when test="${message == 1}">
															<div class="col-sm-8 alert alert-success alert-dismissible" role="alert">
															Thêm thành công!
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
                                            <form:form action="admin/newProduct.htm" method="post" modelAttribute="product" enctype="multipart/form-data">
												<div class="row my-3">
										    		<label class="col-sm-3 col-form-label text-end">Tên sản phẩm: <label style="color: red;">*</label></label>
										    		<div class="col-sm-8">
										      			<form:input path="name" type="text" class="form-control"/>
										      			<form:errors path="name" class="fst-italic text-danger"/>
										    		</div>
									  			</div>
												
												<div class="row mb-3">
										    		<label class="col-sm-3 col-form-label text-end">Loại sản phẩm: <label style="color: red;">*</label></label>
										    		<div class="col-sm-8">
										      			<form:select path="categories.id" items="${categorySel}" itemLabel="name" itemValue="id" class="form-select mb-6"></form:select>
										    		</div>
									  			</div>
									  			
												<div class="row mb-3">
										    		<label class="col-sm-3 col-form-label text-end">Thương hiệu: <label style="color: red;">*</label></label>
										    		<div class="col-sm-8">
										      			<form:select path="brands.brand_id" items="${brandsSel}" itemValue="brand_id" itemLabel="name" class="form-select mb-6"></form:select>
										    		</div>
									  			</div>
									  		
									  			<div class="row my-3">
										    		<label class="col-sm-3 col-form-label text-end">Đơn giá: <label style="color: red;">*</label></label>
										    		<div class="col-sm-8">
										    			<div class="input-group">
										    				<form:input path="price" type="text" class="form-control"/>
										      				<span class="input-group-text">đ</span>
										    			</div>
										    			<form:errors path="price" class="fst-italic text-danger"/>
										    		</div>
									  			</div>
									  			
									  			<div class="row my-3">
										    		<label class="col-sm-3 col-form-label text-end">Quy cách: <label style="color: red;">*</label></label>
										    		<div class="col-sm-8">
										      			<form:input path="specification" type="text" class="form-control"/>
										      			<form:errors path="specification" class="fst-italic text-danger"/>
										    		</div>
									  			</div>
									  			
									  			<div class="row my-3">
										    		<label class="col-sm-3 col-form-label text-end">Đơn vị: <label style="color: red;">*</label></label>
										    		<div class="col-sm-8">
										      			<form:input path="calculation_unit" type="text" class="form-control"/>
										      			<form:errors path="calculation_unit" class="fst-italic text-danger"/>
										    		</div>
									  			</div>
									  			
									  			<div class="row my-3">
										    		<label class="col-sm-3 col-form-label text-end">Số lượng: <label style="color: red;">*</label></label>
										    		<div class="col-sm-8">
										      			<form:input path="quantity" type="text" class="form-control"/>
										      			<form:errors path="quantity" class="fst-italic text-danger"/>
										    		</div>
									  			</div>
									  			
									  			<div class="row my-3">
										    		<label class="col-sm-3 col-form-label text-end">Giảm giá: </label>
										    		<div class="col-sm-8">
										    			<div class="input-group">
										    				<form:input path="discount" type="number" class="form-control"/>
										      				<span class="input-group-text">%</span>
										    			</div>
										    		</div>
									  			</div>
									  			
									  			<div class="row mb-3">
										    		<label class="col-sm-3 form-label text-end">Hình ảnh:</label>
										    		<div class="col-sm-8">
										    			<input type="file" name="file" placeholder="Upload image" class="form-control" accept=".jpg,.gif,.png,.pdf" onchange="preview()">
														<img id="img" class="rounded" src="resources/images/products/default.png" >
										    		</div>
									  			</div>
									  			
									  			<div class="row mb-3">
										    		<label class="col-sm-3 col-form-label text-end">Mô tả: <label style="color: red;">*</label></label>
										    		<div class="col-sm-8">
										    			<form:textarea path="description" class="form-control" id="exampleFormControlTextarea1" rows="3"></form:textarea>
										    			<form:errors path="description" class="fst-italic text-danger"/>
										    		</div>
									  			</div>
									  			
									  			<div class="text-center mb-3">
										    		<button type="submit" class="btn btn-primary bg-gradient text-white">Save</button>
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
                    