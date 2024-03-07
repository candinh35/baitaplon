<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="preloader-wrap">
	<div class="preloader">
		<span class="dot"></span>
		<div class="dots">
			<span></span> <span></span> <span></span>
		</div>
	</div>
</div>
<header class="header-area header-default sticky-header">
	<div class="container-fluid">
		<div class="row row-gutter-0 align-items-center">
			<div class="col-4 col-xs-3 col-sm-3 col-md-3 col-xl-2 col-xxl-3">
				<div class="header-logo-area">
					<a href="index"> <img class="logo-main"
						src="<c:url value="/resources/assets/img/logo-main.svg"></c:url>"
						alt="Logo" /> <img class="logo-light"
						src="<c:url value="/resources/assets/img/logo-main.svg"></c:url>"
						alt="Logo" />
					</a>
				</div>
			</div>
			<div class="col-md-7 col-xl-7 col-xxl-6 d-none d-xl-block">
				<div class="header-align">
					<div class="header-navigation-area">
						<ul class="main-menu nav justify-content-center position-relative">
							<li><a href="index">Home</a></li>
							<li><a href="product">Shop</a></li>
							<li><a href="about">About us</a></li>
							<li><a href="collection">Collections</a></li>
							<li><a href="blog">Blog</a></li>
							<li><a href="contact">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-8 col-xs-9 col-sm-9 col-md-9 col-xl-3 col-xxl-3">
				<div class="header-action-area">
					<div class="header-action-search">
						<button class="btn-search btn-search-menu">
							<i class="lastudioicon-zoom-1"></i>
						</button>
					</div>
					<div class="header-action-login">
						<button class="btn-login" onclick="window.location.href='login'">
							<i class="lastudioicon-single-01-2"></i>
						</button>
					</div>
					<div class="header-action-cart">
						<button class="btn-cart cart-icon">
							<span class="cart-count">0</span> <i
								class="lastudioicon-shopping-cart-2"></i>
						</button>
					</div>
					<button class="btn-menu d-xl-none">
						<i class="lastudioicon-menu-3-1"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
</header>