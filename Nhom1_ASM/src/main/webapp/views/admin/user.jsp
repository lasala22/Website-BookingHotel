<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Management</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="/views/css/index.css">
<link href="/views/css/sb-admin-2.min.css" rel="stylesheet">
<link href="/views/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<style>
.sidebar {
	background-color: #0099FF;
}

* {
	font-size: large;
}
</style>
<script src="https://kit.fontawesome.com/e2b57de48e.js"
	crossorigin="anonymous"></script>
</head>
<body id="page-top">
	<div id="wrapper">
		<!-- Sidebar -->
		<ul class="navbar-nav sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="/admin/index">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">VooTreeVeeVuu</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="/admin/index"> <i class="fas fa-fw fa-tachometer-alt"></i>
					<span>Dashboard</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Quản trị</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i><span>CRUD</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Các loại phần:</h6>
						<a class="collapse-item" href="/admin/hotel">Khách sạn</a> <a
							class="collapse-item" href="/admin/room">Phòng</a> <a
							class="collapse-item" href="/admin/roomtype">Loại phòng</a>
					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link active"
				href="/admin/user"> <i class="fas fa-fw fa-solid fa-user"></i><span>Người
						dùng</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Thống kê</div>

			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseOne"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i><span>Biểu đồ</span>
			</a>
				<div id="collapseOne" class="collapse"
					aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Chọn loại:</h6>
						<a class="collapse-item ps-1" href="/admin/thongke-theoKS">1.
							Thống kê doanh thu<br>theo khách sạn
						</a> <a class="collapse-item ps-1" href="/admin/thongke-topKS">2.
							Top khách sạn<br>được đặt nhiều
						</a>
					</div>
				</div></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="/admin/booking-history"> <i class="fas fa-fw fa-table"></i>
					<span>Lịch sử booking</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<li class="nav-item"><a class="nav-link" href="/home"> <i
					class="fas fa-fw fa-home"></i> <span>Về trang web</span>
			</a></li>
		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a class="nav-link"
							href="/profile/edit-profile"><span
								class="mr-2 d-none d-lg-inline text-gray-600 small">Welcome,<span
									class="text-primary"> ${user.lastName} ${user.firstName}</span></span>
						</a></li>
						<div class="topbar-divider d-none d-sm-block"></div>
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link text-danger" href="">Logout</a></li>
					</ul>
				</nav>
				<!-- End of Topbar -->
				<div class="ps-3 pe-3">
					<div class="w-100"
						style="background-color: #3959AB; border-radius: 15px; height: 700px; margin-top: 30px;">
						<nav class="navbar">
							<div class="container-fluid">
								<a class="navbar-brand"
									style="margin-left: 50px; font-size: 30px; color: white; font-weight: bold;">Danh
									sách người dùng</a>
								<form class="d-flex" role="search" style="margin-right: 50px;">
									<input class="form-control me-2" style="width: 400px"
										type="search" placeholder="Nhập email người dùng"
										aria-label="Search" name="keyword" value="${keyword}">
									<button class="btn btn-outline-light">Search</button>
								</form>
							</div>
						</nav>
						<div class="row mt-4 p-4 m-4"
							style="background-color: white; border-radius: 15px;">
							<table class="table table-striped" style="height: 278px;">
								<thead>
									<tr>
										<th scope="col">Họ tên</th>
										<th scope="col">Email</th>
										<th scope="col">Giới tính</th>
										<th scope="col">SĐT</th>
										<th scope="col">Ngày sinh</th>
										<th scope="col">Trạng thái</th>
										<th scope="col"></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="user" items="${users}">
										<tr>
											<th scope="row">${user.lastName}${user.firstName}</th>
											<td>${user.email}</td>
											<td>${user.gender}</td>
											<td>${user.phoneNum}</td>
											<td>${user.birthdate}</td>
											<td>${user.status}</td>
											<td>
											<td><a href="/admin/user-form/edit/${user.email}"
												type="button" class="btn btn-primary btn-sm">Edit</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- Phân trang -->
							<div class="d-flex justify-content-center mt-3">
								<ul class="pagination">
									<c:if test="${totalPages > 1}">
										<!-- Nút First -->
										<li class="page-item"><a class="page-link"
											href="/admin/user?page=0&keyword=${keyword}"
											aria-label="First"> First </a></li>
										<!-- Hiển thị các số trang -->
										<c:forEach
											begin="${currentPage - 1 >= 0 ? currentPage - 1 : 0}"
											end="${currentPage + 1}" var="i">
											<c:if test="${i < totalPages}">
												<li class="page-item ${currentPage == i ? 'active' : ''}">
													<a class="page-link"
													href="/admin/user?page=${i}&keyword=${keyword}">${i + 1}</a>
												</li>
											</c:if>
										</c:forEach>

										<!-- Hiển thị dấu ... -->
										<c:if test="${currentPage + 1 < totalPages - 1}">
											<li class="page-item disabled"><span class="page-link">...</span></li>
										</c:if>

										<!-- Trang cuối cùng -->
										<li class="page-item"><a class="page-link"
											href="/admin/user?page=${totalPages - 1}&keyword=${keyword}">Last</a></li>
									</c:if>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript-->
	<script src="/views/vendor/jquery/jquery.min.js"></script>
	<script src="/views/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/views/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/views/css/sb-admin-2.min.js"></script>
</body>
</html>