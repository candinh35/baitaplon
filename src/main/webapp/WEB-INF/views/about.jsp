<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<body>
	<div class="wrapper page-about-wrapper">

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
			<section
				class="page-title-area bg-img bg-overlay-black2-5 bg-parallax"
				data-speed="1.1"
				data-bg-img="<c:url value="/resources/assets/img/photos/bg-page2.jpg"/>">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="page-title-content content-style2">
								<h2 class="title">Our success and company history</h2>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--== End Page Title Area ==-->

			<!--== Start Video Divider Area Wrapper ==-->
			<section class="divider-area divider-about-area-style2">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-lg-7">
							<div class="divider-about-thumb">
								<div class="video-content">
									<div class="thumb">
										<img
											src="<c:url value="/resources/assets/img/photos/video2.jpg"/>"
											alt="Moren-Image"> <a class="btn-play play-video-popup"
											href="https://www.youtube.com/watch?v=MLpWrANjFbI"> <svg
												class="icon" xmlns="http://www.w3.org/2000/svg" width="110"
												height="110" fill="none" viewBox="0 0 110 110">
												<circle cx="55" cy="55" r="54" stroke="currentColor"
													stroke-width="2" fill="none"></circle>
												<path stroke="currentColor" stroke-width="2"
													d="M43.5 35.081L78 55 43.5 74.919V35.08z" fill="none"></path></svg>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-5">
							<div class="divider-about-content">
								<div class="divider-content">
									<h2 class="title">
										Welcome to <br>Moren Online Store
									</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Maecenas pellentesque posuere mauris tincidunt orci, aliquet
										nam aliquet purus. Nulla in nullam eget at placerat egestas
										dignissim platea. Enim, euismod sed a integer tristique.
										Fringilla ultrices nunc, viverra interdum maecenas.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--== End Video Divider Area Wrapper ==-->

			<!--== Start Brand Logo Area ==-->
			<section class="brand-logo-area brand-logo-style1-area">
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-lg-6 m-auto">
							<div class="section-title text-center">
								<h2 class="title">Our Partners</h2>
							</div>
						</div>
					</div>
					<div class="row align-items-center">
						<div class="col-lg-12">
							<div class="swiper-container brand-logo-slider-container">
								<div class="swiper-wrapper brand-logo-slider">
									<div class="swiper-slide brand-logo-item">
										<a href="#/"><img
											src="<c:url value="/resources/assets/img/brand-logo/1.png"/>"
											alt="Brand-Logo"></a>
									</div>
									<div class="swiper-slide brand-logo-item">
										<a href="#/"><img
											src="<c:url value="/resources/assets/img/brand-logo/2.png"/>"
											alt="Brand-Logo"></a>
									</div>
									<div class="swiper-slide brand-logo-item">
										<a href="#/"><img
											src="<c:url value="/resources/assets/img/brand-logo/3.png"/>"
											alt="Brand-Logo"></a>
									</div>
									<div class="swiper-slide brand-logo-item">
										<a href="#/"><img
											src="<c:url value="/resources/assets/img/brand-logo/4.png"/>"
											alt="Brand-Logo"></a>
									</div>
									<div class="swiper-slide brand-logo-item">
										<a href="#/"><img
											src="<c:url value="/resources/assets/img/brand-logo/5.png"/>"
											alt="Brand-Logo"></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--== End Brand Logo Area ==-->

			<!--== Start Team Area Wrapper ==-->
			<section class="team-area team-creative-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="section-title text-center">
								<h2 class="title">Company Leadership</h2>
							</div>
						</div>
					</div>
					<div class="row team-members-style2 row-gutter-60">
						<div class="col-sm-6 col-md-4">
							<div class="team-member">
								<div class="thumb">
									<img src="<c:url value="/resources/assets/img/team/1.jpg"/>"
										alt="Broly-HasTech">
								</div>
								<div class="content">
									<div class="member-info">
										<h4 class="name">Agnes Wilson</h4>
										<p>Manager</p>
										<div class="social-icons">
											<a href="#"><i class="fa lastudioicon-b-facebook"></i></a> <a
												href="#"><i class="fa lastudioicon-b-twitter"></i></a> <a
												href="#"><i class="fa lastudioicon-b-pinterest"></i></a> <a
												href="#"><i class="fa lastudioicon-b-instagram"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="team-member mt-xs-30">
								<div class="thumb">
									<img src="<c:url value="/resources/assets/img/team/2.jpg"/>"
										alt="Broly-HasTech">
								</div>
								<div class="content">
									<div class="member-info">
										<h4 class="name">John Doe</h4>
										<p>Creative Director</p>
										<div class="social-icons">
											<a href="#"><i class="fa lastudioicon-b-facebook"></i></a> <a
												href="#"><i class="fa lastudioicon-b-twitter"></i></a> <a
												href="#"><i class="fa lastudioicon-b-pinterest"></i></a> <a
												href="#"><i class="fa lastudioicon-b-instagram"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-4">
							<div class="team-member mt-sm-30">
								<div class="thumb">
									<img src="<c:url value="/resources/assets/img/team/3.jpg"/>"
										alt="Broly-HasTech">
								</div>
								<div class="content">
									<div class="member-info">
										<h4 class="name">John Terry</h4>
										<p>Designer</p>
										<div class="social-icons">
											<a href="#"><i class="fa lastudioicon-b-facebook"></i></a> <a
												href="#"><i class="fa lastudioicon-b-twitter"></i></a> <a
												href="#"><i class="fa lastudioicon-b-pinterest"></i></a> <a
												href="#"><i class="fa lastudioicon-b-instagram"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--== End Team Area Wrapper ==-->

			<!--== Start Blog Area Wrapper ==-->
			<section class="blog-area blog-about-area">
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-lg-6 m-auto">
							<div class="section-title text-center">
								<h2 class="title">Latest News</h2>
							</div>
						</div>
					</div>
					<div class="row post-items">
						<div class="col-md-8 offset-md-2 col-lg-12 offset-lg-0">
							<div class="swiper-container post-slider-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<!--== Start Blog Post Item ==-->
										<div class="post-item">
											<div class="thumb">
												<a href="blog-details.html"><img
													src="<c:url value="/resources/assets/img/blog/s1.jpg"/>"
													alt="Moren-Image"></a>
											</div>
											<div class="content">
												<div class="post-meta">
													<img
														src="<c:url value="/resources/assets/img/icons/s1.jpg"/>"
														alt="Image"> <a href="blog">Agnes Wilson</a>
												</div>
												<div class="inner-content">
													<h4 class="title">
														<a href="blog-details.html">Upcycling Brand Nereja</a>
													</h4>
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing
														elit. Diam risus semper varius vestibulum…</p>
												</div>
												<a href="blog-details.html"
													class="btn-theme btn-border btn-black">Continue reading</a>
											</div>
										</div>
										<!--== End Blog Post Item ==-->
									</div>
									<div class="swiper-slide">
										<!--== Start Blog Post Item ==-->
										<div class="post-item">
											<div class="thumb">
												<a href="blog-details.html"><img
													src="<c:url value="/resources/assets/img/blog/s2.jpg"/>"
													alt="Moren-Image"></a>
											</div>
											<div class="content">
												<div class="post-meta">
													<img
														src="<c:url value="/resources/assets/img/icons/s1.jpg"/>"
														alt="Image"> <a href="blog.html">John Doe</a>
												</div>
												<div class="inner-content">
													<h4 class="title">
														<a href="blog-details.html">Katie Holmes Revives</a>
													</h4>
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing
														elit. Diam risus semper varius vestibulum…</p>
												</div>
												<a href="blog-details.html"
													class="btn-theme btn-border btn-black">Continue reading</a>
											</div>
										</div>
										<!--== End Blog Post Item ==-->
									</div>
									<div class="swiper-slide">
										<!--== Start Blog Post Item ==-->
										<div class="post-item">
											<div class="thumb">
												<a href="blog-details.html"><img
													src="<c:url value="/resources/assets/img/blog/s3.jpg"/>"
													alt="Moren-Image"></a>
											</div>
											<div class="content">
												<div class="post-meta">
													<img
														src="<c:url value="/resources/assets/img/icons/s1.jpg"/>"
														alt="Image"> <a href="blog.html">Agnes Wilson</a>
												</div>
												<div class="inner-content">
													<h4 class="title">
														<a href="blog-details.html">Honey, They Shrunk</a>
													</h4>
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing
														elit. Diam risus semper varius vestibulum…</p>
												</div>
												<a href="blog-details.html"
													class="btn-theme btn-border btn-black">Continue reading</a>
											</div>
										</div>
										<!--== End Blog Post Item ==-->
									</div>
									<div class="swiper-slide">
										<!--== Start Blog Post Item ==-->
										<div class="post-item">
											<div class="thumb">
												<a href="blog-details.html"><img
													src="<c:url value="/resources/assets/img/blog/s4.jpg"/>"
													alt="Moren-Image"></a>
											</div>
											<div class="content">
												<div class="post-meta">
													<img
														src="<c:url value="/resources/assets/img/icons/s1.jpg"/>"
														alt="Image"> <a href="blog.html">John Doe</a>
												</div>
												<div class="inner-content">
													<h4 class="title">
														<a href="blog-details.html">Consider the Backless</a>
													</h4>
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing
														elit. Diam risus semper varius vestibulum…</p>
												</div>
												<a href="blog-details.html"
													class="btn-theme btn-border btn-black">Continue reading</a>
											</div>
										</div>
										<!--== End Blog Post Item ==-->
									</div>
								</div>
								<!-- Add Pagination -->
								<div class="swiper-pagination"></div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--== End Blog Area Wrapper ==-->

			<!--== Start Contact Area ==-->
			<section class="contact-area contact-about-area bg-img"
				data-bg-img="<c:url value="/resources/assets/img/about/2.jpg"/>">
				<div class="container-fluid">
					<div class="row row-gutter-0">
						<div class="col-lg-6">
							<div class="col-left">
								<div class="section-title text-center">
									<h2 class="title">let’s talk</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Nunc, sit et consectetur fermentum, felis. Proin est amet sit
										vitae purus.</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="col-right">
								<div class="contact-form">
									<form class="contact-form-wrapper" id="contact-form"
										action="http://whizthemes.com/mail-php/raju/arden/mail.php"
										method="post">
										<div class="row">
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
								</div>
								<!-- Message Notification -->
								<div class="form-message"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="canvas-overlay"></div>
			</section>
			<!--== End Contact Area ==-->
		</main>
		<jsp:include page="footer.jsp" flush="true"></jsp:include>

	</div>
	<jsp:include page="scripts.jsp" flush="true"></jsp:include>
</body>
</html>