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
                                    <li class="breadcrumb-item"><a class="text-dark" href="index.html">Home</a></li>
                                    <li class="breadcrumb-item active text-dark" aria-current="page">Sản phẩm</li>
                                </ol>
                                <h2 class="page-header-title">Sản phẩm </h2>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </section>
            <!--== End Page Header Area Wrapper ==-->

            <!--== Start Product Details Area Wrapper ==-->
            <section class="section-space">
                <div class="container">
                    <div class="row product-details">
                        <div class="col-lg-6">
                            <div class="product-details-thumb">
                                <img src="resources/images/products/${product.image }" width="570" height="693" alt="Image">
                                <span class="flag-new">new</span>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="product-details-content">
                                <h3 class="product-details-title">${product.name }</h3>
                                <div class="product-details-review mb-7">
                                    <div class="product-review-icon">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                    <button type="button" class="product-review-show">150 reviews</button>
                                </div>
                                <p class="product-review-show" style="color: green"> ${product.sold_quantity } sản phẩm đã bán</p>
                                <p class="mb-7">${product.description }</p>
                                <div class="product-review-show" style="color: orange">${product.quantity - product.sold_quantity } sản phẩm có sẵn</div>
                                
                                <div class="product-details-action">
                                    <h4 class="price"><f:formatNumber value="${product.price - (product.price * product.discount / 100) }" type="currency" currencySymbol="đ" maxFractionDigits="0"/></h4>
                                    <div class="product-details-cart-wishlist">
                                    
						                 <c:choose>
											<c:when test="${not empty message }">
												<button type="button" class="btn"><i class="fas fa-cart-plus"></i> Đã thêm vào giỏ hàng</button>
											</c:when>
											<c:otherwise>
												<c:choose>
													<c:when test="${product.quantity > product.sold_quantity }">
														<a href="user/addCart.htm?id=${product.id }"><button type="button" class="btn"><i class="fas fa-cart-plus"></i> Thêm vào giỏ hàng</button></a>
													</c:when>
													<c:otherwise>
														<button type="button" class="btn"><i class="fas fa-cart-plus"></i> Hết hàng</button>
													</c:otherwise>
												</c:choose>
											</c:otherwise>
										</c:choose>
                                      <!--   <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#action-CartAddModal">Add to cart</button> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="nav product-details-nav" id="product-details-nav-tab" role="tablist">
                                <button class="nav-link" id="specification-tab" data-bs-toggle="tab" data-bs-target="#specification" type="button" role="tab" aria-controls="specification" aria-selected="false">Thông tin</button>
                                <button class="nav-link active" id="review-tab" data-bs-toggle="tab" data-bs-target="#review" type="button" role="tab" aria-controls="review" aria-selected="true">Đánh giá</button>
                            </div>
                            <div class="tab-content" id="product-details-nav-tabContent">
                                <div class="tab-pane" id="specification" role="tabpanel" aria-labelledby="specification-tab">
                                    <ul class="product-details-info-wrap">
                                        <li><span>Nhãn hàng</span>
                                            <p>${product.brands.name }</p>
                                        </li>
                                        <li><span>Kích thước</span>
                                            <p>${product.specification }</p>
                                        </li>
                                        <li><span>Mô tả</span>
                                            <p>${product.description }</p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
                                    <!--== Start Reviews Content Item ==-->
                                    <c:forEach var="s" items="${product.feedback}">
                                    <div class="product-review-item">
                                        <div class="product-review-top">
                                            <div class="product-review-thumb">
                                                <img src="${s.user.image }" alt="Images" style="width: 50px; height: 50px;">
                                            </div>
                                            <div class="product-review-content">
                                                <span class="product-review-name">${s.user.firstName } ${s.user.lastName }</span>
                                                <div class="product-review-icon">
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-half-o"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="desc">${s.comment }</p>
                                        <button type="button" class="review-reply"><i class="fa fa fa-undo"></i></button>
                                    </div>
                                    <!--== End Reviews Content Item ==-->
										</c:forEach>
                                    
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </section>
            <!--== End Product Details Area Wrapper ==-->
	

<%@include file="/WEB-INF/views/include/foo.jsp"%>