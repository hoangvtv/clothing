<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<base href="${pageContext.servletContext.contextPath}/">
<%@include file="/WEB-INF/views/include/hea.jsp"%>
<%@include file="/WEB-INF/views/include/men.jsp"%>
	<br>
<div class="container mbg-azure py-2">
	<div class="contact py-sm-5 py-4">
    <div class="container py-xl-4 py-lg-2">
        <!-- tittle heading -->
        <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
            <span>C</span>ontact
            <span>U</span>s
        </h3>
        <!-- //tittle heading -->
        <div class="row contact-grids agile-1 mb-5">
            <div class="col-sm-4 contact-grid agileinfo-6 mt-sm-0 mt-2">
                <div class="contact-grid1 text-center">
                    <div class="con-ic">
                        <i class="fas fa-map-marker-alt rounded-circle"></i>
                    </div>
                    <h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Address</h4>
                    <p style="font-weight: bold;color:black;">Shoppo
                        <label style="font-weight: bold;color:black;">97 Man Thiện, Q.9, TP.HCM</label>
                    </p>
                </div>
            </div>
            <div class="col-sm-4 contact-grid agileinfo-6 my-sm-0 my-4">
                <div class="contact-grid1 text-center">
                    <div class="con-ic">
                        <i class="fas fa-phone rounded-circle"></i>
                    </div>
                    <h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Call Us</h4>
                    <p style="font-weight: bold;color:black;"><a style="font-weight: bold;color:black;"
                                                                 href="tel:+84968774555">0968774555</a>
                    </p>
                </div>
            </div>
            <div class="col-sm-4 contact-grid agileinfo-6">
                <div class="contact-grid1 text-center">
                    <div class="con-ic">
                        <i class="fas fa-envelope-open rounded-circle"></i>
                    </div>
                    <h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Email</h4>
                    <p>
                        <a style="font-weight: bold;color:black;" href="mailto:n19dcat032@student.ptithcm.edu.vn">Shoppo@gmail.com</a>
                    </p>
                </div>
            </div>
        </div>
        <!-- form -->
        <form id="form" method="post">
            <div class="contact-grids1 w3agile-6">
                <div class="row">
                            <div class="col-md-6 col-sm-6 contact-form1 form-group">
                                <label class="col-form-label">Name</label>
                                <input type="text" class="form-control" placeholder="Name" name="name" id="name"
                                       required="required">
                               <!-- <p class="error" id="error_name"></p> -->
                            </div>
                            <div class="col-md-6 col-sm-6 contact-form1 form-group">
                                <label class="col-form-label">E-mail</label>
                                <input type="email" class="form-control" placeholder="Email" name="email" id="email"
                                       required="required">
                                <!--   <p class="error" id="error_email"></p> -->
                            </div>
                    <div class="col-md-6 col-sm-6 contact-form1 form-group">
                        <label class="col-form-label">Subject</label>
                        <input type="text" class="form-control" placeholder="Subject" name="subject" id="subject"
                               required="required">
                       <!--   <p class="error" id="error_subject"></p> -->
                    </div>
                    <div class="col-md-6 col-sm-6 contact-form1 form-group">
                        <label class="col-form-label">Message</label>
                        <textarea name="message" class="form-control" placeholder="Message" cols="45" rows="5"
                                  id="message" required="required"></textarea>
                        
                    </div>
                </div>
                <div class="right-w3l col-md-6">
                    <input type="button" class="btn btn-primary form-control" id="submit" value="Submit">
                </div>
            </div>
        </form>
        <!-- //form -->
        <br>
        
        
    </div>
</div>

</div>

<%@include file="/WEB-INF/views/include/foo.jsp"%>