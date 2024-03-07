<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

		<jsp:include page="header.jsp"></jsp:include>
		<main class="main-content">
			<!--== Start Page Title Area ==-->
			<section class="page-title-area bg-overlay-black2-6 bg-img"
				data-bg-img="<c:url value="resources/assets/img/photos/bg-page2.jpg"/>">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="page-title-content">
								<h2 class="title">My Account</h2>
								<div class="bread-crumbs">
									<a href="index">Home<span class="breadcrumb-sep">></span></a><span
										class="active">My Account</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--== End Page Title Area ==-->

			<!--== Start Contact Area ==-->
			<div class="account-login-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-7 m-auto">
							<div class="login-top">
								<nav class="login-form-nav">
									<div class="nav nav-tabs" id="nav-tab" role="tablist">
										<button class="nav-link active" id="nav-home-tab"
											data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
											role="tab" aria-controls="nav-home" aria-selected="true">
											<i class="lastudioicon-user-1"></i>Login
										</button>
										<button class="nav-link nav-register" id="nav-profile-tab"
											data-bs-toggle="tab" data-bs-target="#nav-profile"
											type="button" role="tab" aria-controls="nav-profile"
											aria-selected="false">
											<i class="lastudioicon-user-2"></i>Register
										</button>
									</div>
								</nav>
							</div>
							<div class="login-bottom">
								<div class="login-form-content tab-content" id="nav-tabContent">
									<div class="tab-pane fade show active" id="nav-home"
										role="tabpanel" aria-labelledby="nav-home-tab">
										<div class="login-form">
											<h2>${mess}</h2>
											<form class="login-form-wrapper" id="login-form"
												name='loginForm'
												action="<c:url value='j_spring_security_login' />"
												method='POST'>
												<div class="row">
													<div class="col-lg-12">
														<div class="row">
															<div class="col-md-12">
																<div class="form-group">
																	<label for="UserName" class="form-label">Email
																		address *</label> <input name="username" type="text"
																		class="form-control" id="UserName" />
																</div>
															</div>
															<div class="col-md-12">
																<div class="form-group mb-0">
																	<label for="password" class="form-label mt-15">Password*</label>
																	<input path="password" type="password"
																		class="form-control" id="password" name='password' />
																</div>
															</div>
															<div class="col-md-12">
																<div class="form-group mt-15">
																	<input type="checkbox" class="form-check-input"
																		id="exampleCheck1"> <label
																		class="form-check-label" for="exampleCheck1">
																		Remember me</label>
																</div>
															</div>
															<div class="col-md-12">
																<div class="form-group mb-0 form-group-info">
																	<button class="btn btn-theme btn-black" type="submit"
																		name="submit">Login</button>
																	<a class="btn-forgot" href="#">Lost your password?</a>
																</div>
																<input type="hidden" name="${_csrf.parameterName}"
																	value="${_csrf.token}" />

															</div>
														</div>
													</div>
												</div>
											</form>
										</div>
										<!-- Message Notification -->
										<div class="form-message"></div>
									</div>
									<div class="tab-pane fade" id="nav-profile" role="tabpanel"
										aria-labelledby="nav-profile-tab">
										<div class="login-form">
											<form class="login-form-wrapper" id="register-form"
												action="http://whizthemes.com/mail-php/raju/arden/mail.php"
												method="post">
												<div class="row">
													<div class="col-lg-12">
														<div class="row">
															<div class="col-md-12">
																<div class="form-group">
																	<label for="RegUserName" class="form-label">Username
																		*</label> <input type="email" class="form-control"
																		id="RegUserName">
																</div>
															</div>
															<div class="col-md-12">
																<div class="form-group">
																	<label for="email" class="form-label mt-15">Email
																		address *</label> <input type="email" class="form-control"
																		id="email">
																</div>
															</div>
															<div class="col-md-12">
																<div class="form-group mb-0">
																	<label for="regpassword" class="form-label mt-15">Password
																		*</label> <input type="password" class="form-control"
																		id="regpassword">
																</div>
															</div>
															<div class="col-md-12">
																<div class="form-group">
																	<p>Your personal data will be used to support your
																		experience throughout this website, to manage access
																		to your account, and for other purposes described in
																		our privacy policy.</p>
																</div>
																<div class="col-md-12">
																	<div class="form-group mb-0 form-group-info">
																		<button class="btn btn-theme btn-black" type="submit">Register</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--== End Contact Area ==-->
		</main>

		<jsp:include page="footer.jsp" flush="true"></jsp:include>
	</div>
	<jsp:include page="scripts.jsp" flush="true"></jsp:include>
</body>
</html>