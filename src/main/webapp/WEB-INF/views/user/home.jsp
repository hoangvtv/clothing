<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<base href="${pageContext.servletContext.contextPath}/">
<%@include file="/WEB-INF/views/include/hea.jsp"%>
<%@include file="/WEB-INF/views/include/men.jsp"%> 
	<br>
	<section class="hero-two-slider-area position-relative">
  <div class="swiper hero-two-slider-container">
    <div class="swiper-wrapper">
      <div class="swiper-slide hero-two-slide-item">
        <div class="container">
          <div class="row align-items-center position-relative">
            <div class="col-12 col-md-6">
              <div class="hero-two-slide-content">
                <div class="hero-two-slide-text-img"><img src="resources/assets/images/slider/text-light.webp" width="427" height="232" alt="Image"></div>
                <h2 class="hero-two-slide-title">Thời trang Nữ</h2>
               
                <div class="hero-two-slide-meta">
                  <a class="btn btn-border-primary" href="home/shop.htm">Mua ngay</a>
                </div>
              </div>
            </div>
            <div class="col-12 col-md-6">
              <div class="hero-two-slide-thumb">
                <img src="resources/assets/images/slider/slider1-man1.webp" width="555" height="550" alt="Image">
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="swiper-slide hero-two-slide-item">
        <div class="container">
          <div class="row align-items-center position-relative">
            <div class="col-12 col-md-6">
              <div class="hero-two-slide-content">
                <div class="hero-two-slide-text-img"><img src="resources/assets/images/slider/text-light.webp" width="427" height="232" alt="Image"></div>
                <h2 class="hero-two-slide-title">Thời trang Nam</h2>
                
                <div class="hero-two-slide-meta">
                  <a class="btn btn-border-primary" href="home/shop.htm">Mua ngay</a>
                </div>
              </div>
            </div>
            <div class="col-12 col-md-6">
              <div class="hero-two-slide-thumb">
                <img src="resources/assets/images/slider/slider1-man2.webp" width="555" height="550" alt="Image">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--== Add Pagination ==-->
    <div class="hero-two-slider-pagination"></div>
  </div>
</section>
	
	
	
	
	 <!--== Start Product Category Area Wrapper ==-->
            <section class="section-space pb-0">
                <div class="container">
                    <div class="row g-3 g-sm-6">
                    <c:forEach var="s" items="${listCategory}"> 
                        <div class="col-6 col-lg-4 col-lg-2 col-xl-2">
                            <!--== Start Product Category Item ==-->
                            <a href="home/category/product.htm?id=${s.id}" class="product-category-item">
                                <img class="icon" src="resources/images/categories/${s.image }" width="70" height="80" alt="Image-HasTech">
                                <h3 class="title">${s.name }</h3>
                                
                            </a>
                            <!--== End Product Category Item ==-->
                        </div>
                       </c:forEach>
                        
                    </div>
                </div>
            </section>
            <!--== End Product Category Area Wrapper ==-->
	

	<!-- Khai báo pagedListHolder với param p -->
	<jsp:useBean id="pagedListHolder" scope="request"
		type="org.springframework.beans.support.PagedListHolder" />
	<c:url value="home.htm" var="pagedLink">
		<c:param name="p" value="~" />
	</c:url>
	<!--  -->
	
	<!-- Khai báo pagedListHolder với param p -->
	<jsp:useBean id="pagedListHolderProduct" scope="request"
		type="org.springframework.beans.support.PagedListHolder" />
	<c:url value="home.htm" var="pagedLink">
		<c:param name="l" value="~" />
	</c:url>
	<!--  -->

<!--== Start Product Area Wrapper ==-->
            <section class="section-space">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-title text-center">
                                <h2 class="title">Top sale</h2>
                                <p>Sản phẩm sale dịp tết</p>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-n4 mb-sm-n10 g-3 g-sm-6">
                    <c:forEach var="s" items="${pagedListHolder.pageList}">
                        <div class="col-6 col-lg-4 mb-4 mb-sm-9">
                            <!--== Start Product Item ==-->
                            <div class="product-item">
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
                    </div>
                </div>
            </section>
            
			<!--== Start Product Banner Area Wrapper ==-->
			<section class="section-space">
			  <div class="container">
			    <div class="row">
			      <div class="col-sm-6 col-lg-4">
			        <!--== Start Product Category Item ==-->
			        <a href="home/shop.htm" class="product-banner-item">
			          <img src="resources/assets/images/shop/banner/1.webp" width="370" height="370" alt="Image-HasTech">
			        </a>
			        <!--== End Product Category Item ==-->
			      </div>
			      <div class="col-sm-6 col-lg-4 mt-sm-0 mt-6">
			        <!--== Start Product Category Item ==-->
			        <a href="home/shop.htm" class="product-banner-item">
			          <img src="resources/assets/images/shop/banner/2.webp" width="370" height="370" alt="Image-HasTech">
			        </a>
			        <!--== End Product Category Item ==-->
			      </div>
			      <div class="col-sm-6 col-lg-4 mt-lg-0 mt-6">
			        <!--== Start Product Category Item ==-->
			        <a href="home/shop.htm" class="product-banner-item">
			          <img src="resources/assets/images/shop/banner/3.webp" width="370" height="370" alt="Image-HasTech">
			        </a>
			        <!--== End Product Category Item ==-->
			      </div>
			    </div>
			  </div>
			</section>
			<!--== End Product Banner Area Wrapper ==-->
			



				<!--== Start Product Area Wrapper ==-->
				<section class="section-space pt-0">
				  <div class="container">
				    <div class="row">
				      <div class="col-12">
				        <div class="section-title">
				          <h2 class="title">QUẦN SHORT</h2>
				          <p class="m-0">Sảm phẩm bán chạy nhất</p>
				        </div>
				      </div>
				    </div>
				    <div class="row mb-n4 mb-sm-n10 g-3 g-sm-6">
				       <c:forEach var="s" items="${pagedListHolderProduct.pageList}">
				      <div class="col-6 col-lg-4 mb-4 mb-sm-10">
				        <!--== Start Product Item ==-->
				        <div class="product-item product-st2-item">
				          <div class="product-thumb">
				            <a class="d-block" href="home/product.htm?id=${s.id }">
				              <img src="resources/images/products/${s.image }" width="370" height="450" alt="Image-HasTech">
				            </a>
				            <span class="flag-new">Sale</span>
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
				            <div class="product-action">
				              <!-- <button type="button" class="product-action-btn action-btn-cart" data-bs-toggle="modal" data-bs-target="#action-CartAddModal">
				                <span>Add to cart</span>
				              </button> -->
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
				              <button type="button" class="product-action-btn action-btn-quick-view" data-bs-toggle="modal" data-bs-target="#action-QuickViewModal">
				                <i class="fa fa-expand"></i>
				              </button>
				              <button type="button" class="product-action-btn action-btn-wishlist" data-bs-toggle="modal" data-bs-target="#action-WishlistModal">
				                <i class="fa fa-heart-o"></i>
				              </button>
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
				        </div>
				        <!--== End prPduct Item ==-->
				      </div>
				      </c:forEach>
				    </div>
				  </div>
				</section>
				<!--== End Product Area Wrapper ==-->



				<!--== Start News Letter Area Wrapper ==-->
				<section class="section-space pt-0">
				  <div class="container">
				    <div class="newsletter-content-wrap" data-bg-img="resources/assets/images/photos/bg1.webp">
				      <div class="newsletter-content">
				        <div class="section-title mb-0">
				          <h2 class="title">Join with us</h2>
				          <p>Để lại Email để nhận nhiều ưu đãi hấp dẫn.</p>
				        </div>
				      </div>
				      <div class="newsletter-form">
				        <form>
				          <input type="email" class="form-control" placeholder="enter your email">
				          <button class="btn-submit" type="submit"><i class="fa fa-paper-plane"></i></button>
				        </form>
				      </div>
				    </div>
				  </div>
				</section>
				<!--== End News Letter Area Wrapper ==-->





		<%-- <!--== Start Product Quick View Modal ==-->
		<aside class="product-cart-view-modal modal fade" id="action-QuickViewModal" tabindex="-1" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content">
		      <div class="modal-body">
		        <div class="product-quick-view-content">
		          <button type="button" class="btn-close" data-bs-dismiss="modal">
		            <span class="fa fa-close"></span>
		          </button>
		          <div class="container">
		            <div class="row">
		              <div class="col-lg-6">
		                <!--== Start Product Thumbnail Area ==-->
		                <div class="product-single-thumb">
		                  <img src="resources/images/products/${s.image }" width="544" height="560" alt="Image-HasTech">
		                </div>
		                <!--== End Product Thumbnail Area ==-->
		              </div>
		              <div class="col-lg-6">
		
		                <!--== Start Product Info Area ==-->
		                <div class="product-details-content">
		                  <h5 class="product-details-collection">Premioum collection</h5>
		                  <h3 class="product-details-title">${s.name}</h3>
		                  <div class="product-details-review mb-5">
		                    <div class="product-review-icon">
		                      <i class="fa fa-star-o"></i>
		                      <i class="fa fa-star-o"></i>
		                      <i class="fa fa-star-o"></i>
		                      <i class="fa fa-star-o"></i>
		                      <i class="fa fa-star-half-o"></i>
		                    </div>
		                    <button type="button" class="product-review-show">150 reviews</button>
		                  </div>
		                  <p class="mb-6">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus, repellendus. Nam voluptate illo ut quia non sapiente provident alias quos laborum incidunt, earum accusamus, natus. Vero pariatur ut veniam sequi amet consectetur.</p>
		                  <div class="product-details-pro-qty">
		                    <div class="pro-qty">
		                      <input type="text" title="Quantity" value="01">
		                    </div>
		                  </div>
		                  <div class="product-details-action">
		                    <h4 class="price"><f:formatNumber value="${s.price }" type="currency" currencySymbol="đ" maxFractionDigits="0"/></h4>
		                    <div class="product-details-cart-wishlist">
		                      <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#action-CartAddModal">Add to cart</button>
		                    </div>
		                  </div>
		                </div>
		                <!--== End Product Info Area ==--> --%>

		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		</aside>
		<!--== End Product Quick View Modal ==-->


<%@include file="/WEB-INF/views/include/foo.jsp"%>



	<%--thu vien--%>
	<script type="text/javascript" src="<c:url value='resources/assets/js/vendor/modernizr-3.11.7.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='resources/assets/js/vendor/jquery-3.6.0.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='resources/assets/js/vendor/jquery-migrate-3.3.2.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='resources/assets/js/vendor/bootstrap.bundle.min.js'/>"></script>
	
	<!-- Plugins JS -->
	<script type="text/javascript" src="<c:url value='resources/assets/js/plugins/swiper-bundle.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='resources/assets/js/plugins/fancybox.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='resources/assets/js/plugins/jquery.nice-select.min.js'/>"></script>
	
	<!-- Custom Main JS -->
	<script type="text/javascript" src="<c:url value='resources/assets/js/main.js'/>"></script>

