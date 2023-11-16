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
              <h1>Danh mục sản phẩm</h1>
              <p class="breadcrumbs"><span><a href="admin/listBrand.htm">Trang chủ</a></span>
                <span><i class="mdi mdi-chevron-right"></i></span>Danh mục sản phẩm</p>
            </div>
            <div>

              <a href="admin/newCategory.htm" class="btn btn-primary">Thêm danh mục</a>
            </div>
          </div>
          
          <jsp:useBean id="pagedListHolder" scope="request"
			type="org.springframework.beans.support.PagedListHolder" />
		<c:url value="admin/listCategory.htm" var="pagedLink">
			<c:param name="p" value="~" />
		</c:url>
			
          <c:if test="${not empty message}">			
		  	<c:choose>
				<c:when test="${message == 0}">
					<div class="col-sm-8 alert alert-danger" role="alert">
					Xóa thất bại!
					<button type="button" class="rem" data-dismiss="alert" aria-label="Close">&times;</button>
					</div>
				</c:when>
				<c:when test="${message == 1}">
					<div class="col-sm-8 alert alert-success alert-dismissible" role="alert">
					Xóa thành công!
					<button type="button" class="rem" data-dismiss="alert" aria-label="Close">&times;</button>
					</div>
				</c:when>
			</c:choose>		  	
		</c:if>
			
          <div class="row">
            <div class="col-12">
              <div class="card card-default">
                <div class="card-body">
                  <div class="table-responsive">
                  
                  <table id="responsive-data-table" class="table"
                           style="width:100%">
                      <thead>
	                      <tr>
							 <th >Danh sách sản phẩm</th>
							<th >Hình ảnh</th>
							<th >Tên loại</th>
							<!--<th >Ghi chú</th> -->
							<th> Action </th>
	                      </tr>
                      </thead>

                      <tbody>
                        
                        <c:forEach var="s" items="${pagedListHolder.pageList}">
                          <tr>
                            <td class=""><a href="admin/listProduct.htm"><span>${s.id }</span></a></td>							
							<td class=""><img class="rounded" src="resources/images/categories/${s.image }" style="width: 70px; height: 70px;"></td>
							<td> ${s.name }</td>
							<%--<td> ${s.note }</td> --%>
                            <td>
                              <div class="btn-group mb-1">
                                <button type="button"
                                        class="btn btn-outline-success">Info</button>
                                <button type="button"
                                        class="btn btn-outline-success dropdown-toggle dropdown-toggle-split"
                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false" data-display="static">
                                  <span class="sr-only">Info</span>
                                </button>

                                <div class="dropdown-menu">
                                  <a class="dropdown-item btn btn-info" href="admin/editCategory.htm?id=${s.id }">Sửa</a>
                                  <a type="button" class="dropdown-item btn btn-danger" data-bs-toggle="modal"
                                     data-bs-target="#modal-delete-product" data-id="admin/deleteCategory.htm?id=${s.id }" href="#modal-delete-product">Xoá</a>
                                </div>
                              </div>
                            </td>
                          </tr>
                        </c:forEach>
							
                      </tbody>
                    </table>
                  
                    <tg:paging pagedListHolder="${pagedListHolder}" pagedLink="${pagedLink}"/>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="modal fade" id="modal-delete-product" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
              <div class="modal-content">
                <h3 class="modal-header border-bottom-0">Bạn có muốn xoá sản phẩm này</h3>
                <div class="modal-footer px-4">
                  <button type="button" class="btn btn-secondary btn-pill"
                          data-bs-dismiss="modal">Huỷ</button>
                  <a id="link-delete" class="btn btn-danger btn-pill" >Xoá</a>
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
      
    </div>
  </div>
   <%@include file="/WEB-INF/views/admin/common/common_js.jsp"%>

<script>
  $(window).on('load', function() {
    if(${error != null}){
      $('#modal-error').modal('show');
    }
    else if(window.location.href.includes("error")){
      $('#modal-error').modal('show');
    }
    document.getElementById("responsive-data-table_paginate").style.display = "none";
  });
  $(document).ready(function () {
    $('#modal-delete-product').on('show.bs.modal', function (event) {
      let id = $(event.relatedTarget).attr('data-id');
      let link = id;
      document.getElementById('link-delete').href = link
    });
  });
</script>

</body>
</html>





