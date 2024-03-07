<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<footer class="footer-area footer-style6">
	<div class="footer-main">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="footer-logo-area">
						<a href="index"> <img class="logo-main"
							src="<c:url value="/resources/assets/img/logo-main.svg"/> "
							alt="Logo" />
						</a>
					</div>
				</div>
			</div>
			<div class="row row-gutter-60">
				<div class="col-sm-6 col-lg-3">
					<div class="widget-item">
						<h4>Contact Us</h4>
						<nav class="widget-menu-wrap">
							<ul class="nav-menu nav">
								<li><a href="contact">259 Princess Road, London,
										NW18JR, UK</a></li>
								<li><a href="mailto://support@moren.uk">support@moren.uk</a></li>
								<li><a href="tel://+54.8638.8583.43">(+010)
										976-3574-637</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="widget-item ml-39 ml-md-0 mt-xs-30">
						<h4>company</h4>
						<nav class="widget-menu-wrap">
							<ul class="nav-menu nav">
								<li><a href="about">About</a></li>
								<li><a href="product">Shop</a></li>
								<li><a href="index">Press</a></li>
								<li><a href="index">Find Store</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="widget-item ml-45 ml-md-0 mt-md-30">
						<h4>help</h4>
						<nav class="widget-menu-wrap">
							<ul class="nav-menu nav">
								<li><a href="page-not-found.html">FAQs</a></li>
								<li><a href="index">Terms & Conditions</a></li>
								<li><a href="index">Privacy</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3 pl-27 pl-md-15 mt-md-30">
					<div class="widget-item">
						<h4>social</h4>
						<div class="widget-social-icons">
							<a href="#/"><i class="lastudioicon lastudioicon-b-facebook"></i></a>
							<a class="mr-25" href="#/"><i
								class="lastudioicon lastudioicon-b-pinterest"></i></a> <a href="#/"><i
								class="lastudioicon lastudioicon-b-twitter"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<aside class="product-quick-view-modal">
	<div class="product-quick-view-inner">
		<div class="product-quick-view-content">
			<button type="button" class="btn-close">
				<span class="close-icon"><i class="lastudioicon-e-remove"></i></span>
			</button>
			<div class="row row-gutter-0">
				<div class="col-lg-6 col-md-6 col-12">
					<div class="thumb">
						<img src="<c:url value="/resources/assets/img/shop/quick-view1.jpg"/>" alt="Moren-Shop">
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<div class="single-product-info">
						<h4 class="title">Product Simple</h4>
						<div class="product-rating">
							<div class="review">
								<p>
									<span></span>99 in stock
								</p>
							</div>
						</div>
						<div class="prices">
							<span class="price">£49.90</span>
						</div>
						<p class="product-desc">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Fringilla quis ipsum enim viverra.
							Enim in morbi tincidunt ante luctus tincidunt integer. Sed
							adipiscing vehicula.</p>
						<div class="quick-product-action">
							<div class="action-top">
								<div class="pro-qty-area">
									<div class="pro-qty">
										<input type="text" id="quantity" title="Quantity" value="1">
										<a href="#" class="inc qty-btn">+</a><a href="#"
											class="dec qty-btn">-</a>
									</div>
								</div>
								<a class="btn-theme btn-black" href="shop-cart.html">Add to
									cart</a>
							</div>
							<div class="action-bottom">
								<a class="btn-wishlist" href="shop-wishlist.html"><i
									class="labtn-icon labtn-icon-wishlist"></i>Add to wishlist</a> <a
									class="btn-compare" href="shop-compare.html"><i
									class="labtn-icon labtn-icon-compare"></i>Add to compare</a>
							</div>
						</div>
						<div class="product-ratting">
							<div class="product-sku">
								SKU: <span>REF. LA-276</span>
							</div>
						</div>
						<div class="product-categorys">
							<div class="product-category">
								Category: <span>Uncategorized</span>
							</div>
						</div>
						<div class="widget">
							<h3 class="title">Tags:</h3>
							<div class="widget-tags">
								<ul>
									<li><a href="shop.html">Blazer,</a></li>
									<li><a href="shop.html">Fashion,</a></li>
									<li><a href="shop.html">wordpress,</a></li>
								</ul>
							</div>
						</div>
						<div class="product-social-info">
							<a href="#"><span class="lastudioicon-b-facebook"></span></a> <a
								href="#"><span class="lastudioicon-b-twitter"></span></a> <a
								href="#"><span class="lastudioicon-b-linkedin"></span></a> <a
								href="#"><span class="lastudioicon-b-pinterest"></span></a>
						</div>
						<div class="product-nextprev">
							<a href="shop-single-product.html"> <i
								class="lastudioicon-arrow-left"></i>
							</a> <a href="shop-single-product.html"> <i
								class="lastudioicon-arrow-right"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="canvas-overlay"></div>
</aside>
<!--== End Product Quick View ==-->

<!--== Start Aside Search Menu ==-->
<div class="search-box-wrapper">
	<div class="search-box-content-inner">
		<div class="search-box-form-wrap">
			<div class="search-note">
				<p>Start typing and press Enter to search</p>
			</div>
			<form action="#" method="post">
				<div class="search-form position-relative">
					<label for="search-input" class="sr-only">Search</label> <input
						type="search" class="form-control" placeholder="Search"
						id="search-input">
					<button class="search-button">
						<i class="lastudioicon-zoom-1"></i>
					</button>
				</div>
			</form>
		</div>
	</div>
	<!--== End Aside Search Menu ==-->
	<a href="javascript:;" class="search-close"><i
		class="lastudioicon-e-remove"></i></a>
</div>
<!--== End Aside Search Menu ==-->

<!--== Start Sidebar Cart Menu ==-->
<aside class="sidebar-cart-modal">
	<div class="sidebar-cart-inner">
		<div class="sidebar-cart-content">
			<a class="cart-close" href="javascript:void(0);"><i
				class="lastudioicon-e-remove"></i></a>
			<div class="sidebar-cart">
				<h4 class="sidebar-cart-title">Shopping Cart</h4>
				<div class="product-cart">
					<div class="product-cart-item">
						<div class="product-img">
							<a href="shop.html"><img src="<c:url value="/resources/assets/img/shop/cart/1.jpg"/>"
								alt=""></a>
						</div>
						<div class="product-info">
							<h4 class="title">
								<a href="shop.html">I’m a Unicorn Earrings</a>
							</h4>
							<span class="info">1 × £69.00</span>
						</div>
						<div class="product-delete">
							<a href="#/">×</a>
						</div>
					</div>
					<div class="product-cart-item">
						<div class="product-img">
							<a href="shop.html"><img src="<c:url value="/resources/assets/img/shop/cart/2.jpg"/>" alt=""></a>
						</div>
						<div class="product-info">
							<h4 class="title">
								<a href="shop.html">Knit cropped cardigan</a>
							</h4>
							<span class="info">1 × £29.90</span>
						</div>
						<div class="product-delete">
							<a href="#/">×</a>
						</div>
					</div>
				</div>
				<div class="cart-total">
					<h4>
						Subtotal: <span class="money">£98.90</span>
					</h4>
				</div>
				<div class="shipping-info">
					<div class="loading-bar">
						<div class="load-percent"></div>
						<div class="label-free-shipping">
							<div class="free-shipping svg-icon-style">
								<span class="svg-icon" id="svg-icon-shipping"
									data-svg-icon="<c:url value="/resources/assets/img/icons/shop1.svg"/> "></span>
							</div>
							<p>Spend £101.10 to get Free Shipping</p>
						</div>
					</div>
				</div>
				<div class="cart-checkout-btn">
					<a class="btn-theme" href="cart">View cart</a> <a
						class="btn-theme" href="shop-checkout.html">Checkout</a>
				</div>
			</div>
		</div>
	</div>
</aside>
<div class="sidebar-cart-overlay"></div>
<!--== End Sidebar Cart Menu ==-->

<!--== Start Side Menu ==-->
<aside
	class="off-canvas-wrapper canvas-fullpage-menu fullpage-menu-style3">
	<div class="off-canvas-inner">
		<div class="off-canvas-overlay"></div>
		<!-- Start Off Canvas Content Wrapper -->
		<div class="off-canvas-content">
			<!-- Off Canvas Header -->
			<div class="off-canvas-header">
				<div class="close-action">
					<button class="btn-close">
						<i class="lastudioicon-e-remove"></i>
					</button>
				</div>
			</div>

			<div class="off-canvas-item">
				<!-- Start Mobile Menu Wrapper -->
				<div class="res-mobile-menu">
					<!-- Note Content Auto Generate By Jquery From Main Menu -->
				</div>
				<!-- End Mobile Menu Wrapper -->
			</div>
			<!-- Off Canvas Footer -->
			<div class="off-canvas-footer"></div>
		</div>
		<!-- End Off Canvas Content Wrapper -->
	</div>
</aside>