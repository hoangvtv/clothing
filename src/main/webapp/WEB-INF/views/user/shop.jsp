<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<base href="${pageContext.servletContext.contextPath}/">

<%@include file="/WEB-INF/views/include/hea.jsp"%>
<%@include file="/WEB-INF/views/include/men.jsp"%> 
	<br>
	
            <!--== Start Page Header Area Wrapper ==-->
            <section class="page-header-area pt-10 pb-9" data-bg-color="#FFF3DA">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="page-header-st3-content text-center text-md-start">
                                <ol class="breadcrumb justify-content-center justify-content-md-start">
                                    <li class="breadcrumb-item"><a class="text-dark" href="home.htm">Home</a></li>
                                    <li class="breadcrumb-item active text-dark" aria-current="page">Shop</li>
                                </ol>
                                <h2 class="page-header-title">Shop</h2>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </section>
            <!--== End Page Header Area Wrapper ==-->

		<!-- Khai báo pagedListHolder với param p -->
			<jsp:useBean id="pagedListHolder" scope="request"
				type="org.springframework.beans.support.PagedListHolder" />
			<c:url value="home/shop.htm" var="pagedLink">
				<c:param name="p" value="~" />
			</c:url>
		<!--  -->

            <!--== Start Product Area Wrapper ==-->
            <section class="section-space">
                <div class="container">
                    <div class="row justify-content-between flex-xl-row-reverse">
                        <div class="col-xl-9">
                            <div class="row g-3 g-sm-6">
                             <c:forEach var="s" items="${pagedListHolder.pageList}">
                                <div class="col-6 col-lg-4 col-xl-4 mb-4 mb-sm-8">
                                    <!--== Start Product Item ==-->
                                    <div class="product-item product-st3-item">
                                        <div class="product-thumb">
                                            <a class="d-block" href="home/product.htm?id=${s.id }">
                                                <img src="resources/images/products/${s.image }" width="370" height="450" alt="Image-HasTech">
                                            </a>
                                            <span class="flag-new">new</span>
                                            <div class="product-action">
                                                <button type="button" class="product-action-btn action-btn-quick-view" data-bs-toggle="modal" data-bs-target="#action-QuickViewModal">
                                                    <i class="fa fa-expand"></i>
                                                </button>
                                                <c:choose>
													<c:when test="${s.quantity > s.sold_quantity }">
														<a class="product-action-btn action-btn-cart" href="user/addCart.htm?id=${s.id }">
				                                            Thêm vào giỏ hàng
				                                        </a>
														
														</c:when>
														<c:otherwise>
															<a class="btn btn-danger"><i class="fas fa-cart-plus fs-4"></i></a>
														</c:otherwise>
													</c:choose>
                                                <button type="button" class="product-action-btn action-btn-wishlist" data-bs-toggle="modal" data-bs-target="#action-WishlistModal">
                                                    <i class="fa fa-heart-o"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <div class="product-rating">
                                                <div class="rating">
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-half-o"></i>
                                                </div>
                                                <div class="reviews">150 reviews</div>
                                            </div>
                                            <h4 class="title"><a href="home/product.htm?id=${s.id }">${s.name }</a></h4>
                                            <div class="prices">
                                                <span class="price"><f:formatNumber value="${s.price - (s.price * s.discount / 100) }" type="currency" currencySymbol="đ" maxFractionDigits="0"/></span>
                                                <span class="price-old"><f:formatNumber value="${s.price }" type="currency" currencySymbol="đ" maxFractionDigits="0"/></span>
                                            </div>
                                        </div>
                                        <div class="product-action-bottom">
                                            <button type="button" class="product-action-btn action-btn-quick-view" data-bs-toggle="modal" data-bs-target="#action-QuickViewModal">
                                                <i class="fa fa-expand"></i>
                                            </button>
                                            <button type="button" class="product-action-btn action-btn-wishlist" data-bs-toggle="modal" data-bs-target="#action-WishlistModal">
                                                <i class="fa fa-heart-o"></i>
                                            </button>
                                            <button type="button" class="product-action-btn action-btn-cart" data-bs-toggle="modal" data-bs-target="#action-CartAddModal">
                                                <span>Add to cart</span>
                                            </button>
                                        </div>
                                    </div>
                                    <!--== End prPduct Item ==-->
                                </div>
                              	</c:forEach> 
                              	 
                       		 </div>
                       		  <div class="container">
									<tg:paging pagedListHolder="${pagedListHolder}" pagedLink="${pagedLink}" /> 
								</div>
                        </div>
                        <div class="col-xl-3">
                            <div class="product-sidebar-widget">
                                <div class="product-widget-search">
                                    <form action="home/search.htm">
                                        <input name="keyword" type="search" placeholder="Search Here">
                                        <button type="submit"><i class="fa fa-search"></i></button>
                                    </form>
                                </div>
                                <div class="product-widget">
                                    <h4 class="product-widget-title">Categoris</h4>
                                    <ul class="product-widget-category">
                                    	<c:forEach var="c" items="${categories }">
											<li><a href="home/category/product.htm?id=${c.id }">${c.name }</a></li>
										</c:forEach>
                                    </ul>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--== End Product Area Wrapper ==-->
  

<%@include file="/WEB-INF/views/include/foo.jsp"%>