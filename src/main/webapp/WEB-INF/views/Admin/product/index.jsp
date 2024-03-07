<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<jsp:include page="../head.jsp"></jsp:include>
<body class="bg-theme bg-theme1">

	<div class="wrapper">
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="page-wrapper">
			<div class="page-content">

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<div class="row align-items-center">
									<div class="col-lg-3 col-xl-2">
										<a href="addProduct"
											class="btn btn-light mb-3 mb-lg-0"><i
											class='bx bxs-plus-square'></i>New Product</a>
									</div>
									<div class="col-lg-9 col-xl-10">
										<form class="float-lg-end">
											<div class="row row-cols-lg-auto g-2">
												<div class="col-12">
													<div class="position-relative">
														<input type="text" class="form-control ps-5"
															placeholder="Search Product..."> <span
															class="position-absolute top-50 product-show translate-middle-y"><i
															class="bx bx-search"></i></span>
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
				<c:if test="${!empty success}">
					<div class="alert alert-primary" role="alert">
						<strong>${success}</strong>
					</div>
				</c:if>
				<div
					class="row row-cols-1 row-cols-sm-2 row-cols-lg-3 row-cols-xl-4 row-cols-xxl-5 product-grid">
					<c:forEach items="${list}" var="p">
						<div class="col">
							<div class="card">
								<img src="<c:url value='/resources/${p.image}' />" class="card-img-top" alt="...">

								<div class="card-body">
									<a href="detail?proId=${p.proId}"><h6 class="card-title cursor-pointer">${p.proName }</h6></a>
									<div class="clearfix">
										<p class="mb-0 float-start">
											<strong><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${p.price}" /></strong>
										</p>
										
									</div>
								</div>
								<a href="editProduct?proId=${p.proId}" class="btn btn-primary">Edit</a>
							</div>
						</div>
					</c:forEach>
				</div>
				<!--end row-->


			</div>
		</div>
		<!--end page wrapper -->
		<!--start overlay-->
		<div class="overlay toggle-icon"></div>
		<!--end overlay-->
		<!--Start Back To Top Button-->
		<a href="javaScript:;" class="back-to-top"><i
			class='bx bxs-up-arrow-alt'></i></a>
		<!--End Back To Top Button-->
	</div>
	<jsp:include page="../scripts.jsp" />
</body>
</html>