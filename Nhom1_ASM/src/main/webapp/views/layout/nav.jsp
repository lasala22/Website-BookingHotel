<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>

<script src="https://kit.fontawesome.com/6689c10aee.js"
	crossorigin="anonymous"></script>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top">
		<div class="container">
			<a class="navbar-brand" href="/home"> <img
				src="/views/img/logo-removebg-preview.png" alt="logo" width="300">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link fw-bolder"
						aria-current="page" href="/hotel/list">Danh Sách Khách Sạn</a></li>
				</ul>
				<form class="d-grid gap-2 d-md-flex justify-content-md-end">
					<c:if test="${empty user}">
						<a href="/login" class="btn btn-outline-secondary" type="submit">
							<i class="fa-solid fa-user" style="color: #74C0FC;"></i> Đăng
							Nhập
						</a>
						<a href="/signup" class="btn btn-primary" type="submit">Đăng
							Ký</a>
					</c:if>
					<c:if test="${useracc.role == true && not empty user}">
						<a href="/profile/edit-profile" class="btn btn-outline-primary"
							type="submit">Xin chào, ${user.lastName} ${user.firstName}! </a>
						<a href="/admin/index" class="btn btn-outline-success">Quản lý</a>
						<a href="/logout" class="btn btn-outline-danger" type="submit">Đăng
							Xuất</a>
					</c:if>
					<c:if test="${useracc.role == false  && not empty user}">
						<a href="/profile/edit-profile" class="btn btn-outline-primary"
							type="submit">Xin chào, ${user.lastName} ${user.firstName}! </a>
						<a href="/logout" class="btn btn-outline-danger" type="submit">Đăng
							Xuất</a>
					</c:if>
				</form>
			</div>
		</div>
	</nav>
</body>
</html>