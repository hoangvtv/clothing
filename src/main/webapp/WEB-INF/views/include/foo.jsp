<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 </main>
<!--== Start Footer Area Wrapper ==-->
        <footer class="footer-area">
            <!--== Start Footer Main ==-->
            <div class="footer-main">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-lg-4">
                            <div class="widget-item">
                                <div class="widget-about">
                                    <a class="widget-logo" href="index.html">
                                        <img src="resources/assets/images/logoxx140.png" width="200" height="150" alt="Logo">
                                    </a>
                                    <p class="desc">Đặt sự hài lòng cửa khách hàng lên hàng đầu</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-5 mt-md-0 mt-9">
                            <div class="widget-item">
                                <h4 class="widget-title">Thông tin</h4>
                                <ul class="widget-nav">
                                    <li><a href="blog.html">Blog</a></li>
                                    <li><a href="home/information.htm">Thông tin</a></li>
                                    <li><a href="home/information.htm">Liên hệ</a></li>
                                    <li><a href="faq.html">Bảo mật</a></li>
                                    <li><a href="login.htm">Đăng nhập</a></li>
                                    <li><a href="home/shop.htm">Shop</a></li>                              
                                    <li><a href="faq.html">FAQs</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3 mt-lg-0 mt-6">
                            <div class="widget-item">
                                <h4 class="widget-title">Mạng xã hội </h4>
                                <div class="widget-social">
                                    <a href="https://twitter.com/" target="_blank" rel="noopener"><i class="fa fa-twitter"></i></a>
                                    <a href="https://www.facebook.com/" target="_blank" rel="noopener"><i class="fa fa-facebook"></i></a>
                                    <a href="https://www.pinterest.com/" target="_blank" rel="noopener"><i class="fa fa-pinterest-p"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--== End Footer Main ==-->
            



            <script src="<c:url value='resources/assets/dist/js/bootstrap.bundle.min.js'/>"></script>
            <script type="text/javascript" src="<c:url value='https://code.jquery.com/jquery-3.5.1.min.js'/>"></script>
            <script src="<c:url value='//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'/>"></script>
            <script type="text/javascript">
                
                function cartEmpty() {
                    alert("Giỏ hàng đang trống!");
                    return false;
                }
                
                /* Chỉnh sửa số lượng của item trong giỏ hàng*/
                $(".edit-cart").click(editQuantityCart);
                function editQuantityCart() {
                    
                    var id = $(this).attr('id');
                    var quantity = $("#quantity-cart-" + id).val();
                    window.location = "user/editCart.htm?id=" + id + "&quantity="+ quantity;
                }

                /* Phần này là xử lý đóng thông báo */
                $(".rem").click(rem);
                function rem() {
                    $(this).parent().remove();
                }	

                /* Hàm này để preview ảnh trước khi load lên server */
                function preview() {
                    img.src=URL.createObjectURL(event.target.files[0]);
                }
                
                /*var editor = CKEDITOR.replace('messageBody'); */
                /* CKFinder.setupCKEditor(ckeditor, '${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js'); */
            </script>
            
             <!--== JS ==-->
            <script type="text/javascript" src="<c:url value='resources/assets/js/vendor/modernizr-3.11.7.min.js'/>"></script>
			<script type="text/javascript" src="<c:url value='resources/assets/js/vendor/jquery-3.6.0.min.js'/>"></script>
			<script type="text/javascript" src="<c:url value='resources/assets/js/vendor/jquery-migrate-3.3.2.min.js'/>"></script>
			<script type="text/javascript" src="<c:url value='resources/assets/js/vendor/bootstrap.bundle.min.js'/>"></script>
			
			<!-- Plugins JS -->
			<script type="text/javascript" src="<c:url value='resources/assets/js/plugins/swiper-bundle.min.js'/>"></script>
			<script type="text/javascript" src="<c:url value='resources/assets/js/plugins/fancybox.min.js'/>"></script>
			<script type="text/javascript" src="<c:url value='resources/assets/js/plugins/jquery.nice-select.min.js'/>"></script>
			<script type="text/javascript" src="<c:url value='resources/assets/js/plugins/range-slider.js'/>"></script>
			<!-- Custom Main JS -->
			<script type="text/javascript" src="<c:url value='resources/assets/js/main.js'/>"></script>


			
</body>
</html>