<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="../head.jsp"></jsp:include>
<body class="bg-theme bg-theme1">

	<div class="wrapper">
		<jsp:include page="../sidebar.jsp"></jsp:include>
		<div class="page-wrapper">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<div class="row align-items-center">
								<div class="col-lg-3 col-xl-2">
									<a href="addCategory" class="btn btn-light mb-3 mb-lg-0"><i
										class='bx bxs-plus-square'></i>New Category</a>
								</div>
								<div class="col-lg-9 col-xl-10">
									<form class="float-lg-end" action="searchCategoryByName">
										<div class="row row-cols-lg-auto g-2">
											<div class="col-12">
												<div class="position-relative">
													<input type="text" name="cateName" class="form-control ps-5"
														placeholder="Search Category..."> <span
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
			<div class="col-lg-6">
				<c:if test="${!empty success}">
					<div class="alert alert-success" role="alert">
						<strong>${success}</strong>
					</div>
				</c:if>


			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xl-9 mx-auto">
						<h6 class="mb-0 text-uppercase">List Category</h6>
						<hr />
						<div class="card">
							<div class="card-body">
								<table class="table mb-0">
									<thead class="table-dark">
										<tr>
											<th scope="col">#</th>
											<th scope="col">Category Name</th>
											<th scope="col"></th>
											
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list}" var="c" varStatus="loop">
											<tr>
												<th scope="row">${loop.count}</th>
												<td>${c.cateName}</td>
												
												<td><a href="deleteCategory?cateId=${c.cateId}" class="btn btn-danger" onclick="return confirm('Sure?')">Delete</a> 
												<a href="editCategory?cateId=${c.cateId}" class="btn btn-primary">Edit</a>
												</td>
											</tr>
										</c:forEach>


									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<jsp:include page="../scripts.jsp"></jsp:include>
</body>
</html>