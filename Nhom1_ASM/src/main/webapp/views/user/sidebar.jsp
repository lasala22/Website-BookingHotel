<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
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
<script src="https://kit.fontawesome.com/e2b57de48e.js"
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

hr {
	border: 0.5px solid;
	color: white;
}
</style>
</head>
<body id="page-top">

	<!-- Sidebar -->
	<ul class="navbar-nav sidebar sidebar-dark accordion"
		id="accordionSidebar">

		<!-- Sidebar - Brand -->
		<!-- <a
			class="sidebar-brand d-flex align-items-center justify-content-center"
			href="/home">
			<div class="sidebar-brand-icon rotate-n-15">
				<i class="fas fa-user"></i>
			</div>
			<div class="sidebar-brand-text mx-3">
				<b class="fs-6">VooTreeVeeVuu</b>
			</div>
		</a> -->

		<!-- Divider -->
		<hr class="sidebar-divider my-0">

		<!-- Nav Item - Dashboard -->
		<!-- <li class="nav-item active"><a class="nav-link"
			href="/profile/wallet"> <i class="fa-regular fa-sack-dollar"></i>
				<span>Ví tiền</span></a></li>
		<li class="nav-item active"><a class="nav-link"
			href="/profile/booking"> <i class="fa-regular fa-bars-progress"></i>
				<span>Phòng đang đặt</span></a></li> -->
		<li class="nav-item active"><a class="nav-link"
			href="/profile/history"> <i class="fa-regular fa-list-check"></i>
				<span>Lịch sử đặt phòng</span></a></li>
		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">Profile</div>

		<li class="nav-item active"><a class="nav-link"
			href="/profile/edit-profile"> <i class="fa-regular fa-address-card"></i>
				<span>Thông tin cá nhân</span></a></li>
		<li class="nav-item active"><a class="nav-link"
			href="/profile/pass-change"> <i class="fa-regular fa-key"></i> <span>Đổi
					mật khẩu</span></a></li>
		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Sidebar Toggler (Sidebar) -->
		<li class="nav-item"><a class="nav-link" href="/logout"> <i
				class="fas fa-fw fa-home"></i> <span>Đăng xuất</span>
		</a></li>
	</ul>
	<!-- End of Sidebar -->

	<!-- Bootstrap core JavaScript-->
	<script src="/views/vendor/jquery/jquery.min.js"></script>
	<script src="/views/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/views/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/views/css/sb-admin-2.min.js"></script>
</body>
</html>