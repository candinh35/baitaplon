<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="sidebar-wrapper" data-simplebar="true">
	<div class="sidebar-header">
		<div>
			<img src="<c:url value="/resources/templates/images/logo-icon.png"/> "
				class="logo-icon" alt="logo icon">
		</div>
		<div>
			<h4 class="logo-text">Dashtreme</h4>
		</div>
		<div class="toggle-icon ms-auto">
			<i class='bx bx-arrow-back'></i>
		</div>
	</div>
	<!--navigation-->
	<ul class="metismenu" id="menu">
		<li><a href="javascript:;" class="has-arrow">
				<div class="parent-icon">
					<i class='bx bx-home-alt'></i>
				</div>
				<div class="menu-title">Dashboard</div>
		</a></li>

		<li><a href="javascript:;" class="has-arrow">
				<div class="parent-icon">
					<i class='bx bx-cart'></i>
				</div>
				<div class="menu-title">Category manager</div>
		</a>
			<ul>
				<li><a href="listCategory"><i class='bx bx-radio-circle'></i>Categories</a></li>
				<li><a href="addCategory"><i class='bx bx-radio-circle'></i>Add New Category </a></li>
			</ul></li>
		<li><a href="javascript:;" class="has-arrow">
				<div class="parent-icon">
					<i class='bx bx-cart'></i>
				</div>
				<div class="menu-title">Product Manager</div>
		</a>
			<ul>
				<li><a href="product"><i class='bx bx-radio-circle'></i>Products</a></li>
				<li><a href="addProduct"><i class='bx bx-radio-circle'></i>Add New Products</a></li>
			</ul></li>

	</ul>
	<!--end navigation-->
</div>
