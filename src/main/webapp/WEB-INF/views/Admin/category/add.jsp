<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<jsp:include page="../head.jsp"></jsp:include>
<body class="bg-theme bg-theme1">

	<div class="wrapper">

		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="page-wrapper">
			<div class="page-content">

				<!--breadcrumb-->
				<div
					class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
					<div class="breadcrumb-title pe-3">Category</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="dashboard"><i
										class="bx bx-home-alt"></i></a></li>
								<li class="breadcrumb-item active" aria-current="page">Add
									New Category</li>
							</ol>
						</nav>
					</div>
					<div class="ms-auto">
						<div class="btn-group">
							<button type="button" class="btn btn-light">Settings</button>
							<button type="button"
								class="btn btn-light dropdown-toggle dropdown-toggle-split"
								data-bs-toggle="dropdown">
								<span class="visually-hidden">Toggle Dropdown</span>
							</button>
							<div
								class="dropdown-menu dropdown-menu-right dropdown-menu-lg-end">
								<a class="dropdown-item" href="javascript:;">Action</a> <a
									class="dropdown-item" href="javascript:;">Another action</a> <a
									class="dropdown-item" href="javascript:;">Something else
									here</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:;">Separated link</a>
							</div>
						</div>
					</div>
				</div>

				<div class="card">
					<div class="card-body p-4">
						<h5 class="card-title">Add New Category</h5>
						<hr />
						<div class="form-body mt-4">
							<div class="row">
								<div class="col-lg-8">
									<div class="border border-3 p-4 rounded">
										<form:form action="insertCategory" modelAttribute="category"
											method="POST">
											<div class="mb-3">
												<label for="inputProductTitle" class="form-label">Category Name</label>
												<form:input type="text" path="cateName" class="form-control"
													id="inputProductTitle" placeholder="Enter Category Name" />
											</div>
											
											<button type="submit" class="btn btn-light">Save Category</button>
										</form:form>

									</div>
								</div>

							</div>
							<!--end row-->
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<jsp:include page="../scripts.jsp"></jsp:include>
</body>
</html>