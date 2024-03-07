<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<body>
	<div class="wrapper">

		<!--== Start Preloader Content ==-->
		<div class="preloader-wrap">
			<div class="preloader">
				<span class="dot"></span>
				<div class="dots">
					<span></span> <span></span> <span></span>
				</div>
			</div>
		</div>

		<jsp:include page="header.jsp" flush="true"></jsp:include>

		<main class="main-content">
			<!--== Start Page Title Area ==-->
			<section class="page-title-area bg-img"
				data-bg-img="<c:url value="/resources/assets/img/photos/bg-page3.jpg"/>">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="page-title-content">
								<h2 class="title">Contact Us</h2>
								<div class="bread-crumbs">
									<a href="index">Home<span class="breadcrumb-sep">></span></a><span
										class="active">Contact Us</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--== End Page Title Area ==-->

			<!--== Start Contact Area ==-->
			<section class="contact-area">
				<div class="container">
					<div class="row">
						<div class=" col-lg-7">
							<div class="contact-form">
								<form class="contact-form-wrapper form-style" id="contact-form"
									action="http://whizthemes.com/mail-php/raju/arden/mail.php"
									method="post">
									<div class="row">
										<div class="col-lg-12">
											<div class="section-title">
												<h2 class="title">Contact us for any questions</h2>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<input class="form-control" type="text" name="con_name"
													placeholder="Name*">
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<input class="form-control" type="email" name="con_email"
													placeholder="Email*">
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<input class="form-control" type="text" name="con_phone"
													placeholder="Phone Number">
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group mb-0">
												<textarea class="form-control textarea" name="con_message"
													placeholder="How can we help?"></textarea>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group mb-0">
												<button class="btn btn-theme btn-black" type="submit">Send
													Message</button>
											</div>
										</div>
									</div>
								</form>
								<!-- Message Notification -->
								<div class="form-message"></div>
							</div>
						</div>
						<div class=" col-lg-5">
							<div class="contact-info-wrapper">
								<div class="section-title">
									<h2 class="title">Get info</h2>
								</div>
								<div class="contact-info-content">
									<div class="align-top">
										<div class="contact-info-item">
											<div class="icon">
												<i class="lastudioicon lastudioicon-pin-3-2"></i>
											</div>
											<div class="content">
												<h4>Moren Store 1</h4>
												<p>PO Box 16122 Collins Street West Victoria 8007
													Australia</p>
											</div>
										</div>
										<div class="contact-info-item">
											<div class="icon">
												<span><i class="lastudioicon lastudioicon-pin-3-2"></i></span>
											</div>
											<div class="content">
												<h4>Moren Store 2</h4>
												<p>8134 Budd Rd Terre Haute, In 3548</p>
											</div>
										</div>
									</div>
									<div class="align-bottom">
										<div class="contact-info-item info-item2">
											<div class="icon">
												<span><i class="lastudioicon lastudioicon-mail"></i></span>
											</div>
											<div class="content">
												<p>info@moren.com</p>
											</div>
										</div>
										<div class="contact-info-item">
											<div class="icon">
												<span><i
													class="lastudioicon lastudioicon-phone-call-2"></i></span>
											</div>
											<div class="content">
												<p>+354-354-4861</p>
											</div>
										</div>
										<div class="contact-info-item social-icons-item mb-0 pb-0">
											<div class="content">
												<div class="social-widget">
													<a href="#/"><i
														class="lastudioicon lastudioicon-b-facebook"></i></a> <a
														href="#/"><i
														class="lastudioicon lastudioicon-b-pinterest"></i></a> <a
														href="#/"><i
														class="lastudioicon lastudioicon-b-twitter"></i></a> <a
														href="#/"><i
														class="lastudioicon lastudioicon-b-instagram"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--== End Contact Area ==-->

			<!--== Start Map Area ==-->

			<!--== End Map Area ==-->
		</main>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>

	</div>
	<jsp:include page="scripts.jsp" flush="true"></jsp:include>
</body>
</html>