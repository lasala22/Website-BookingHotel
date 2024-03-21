<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
<script src="https://kit.fontawesome.com/928ea30d6f.js"
	crossorigin="anonymous"></script>
<title>List Hotel</title>
<style>
::placeholder {
	color: white !important;
	opacity: 1;
	/* Firefox */
}
</style>
</head>
<body>
	<div class="row"
		style="background-image: url('/views/img/background_3.jpg'); background-repeat: no-repeat; background-size: cover;">
		<div class="col p-5" style="height: 200px;">
			<h2 class="text-lg-center" style="font-weight: bold; color: beige;">Từ
				Đông Nam Á Đến Thế Giới, Trong Tầm Tay Bạn</h2>
		</div>
		<div class="row mb-4 ms-4 ps-5">
			<form action="/hotel/search" method="post">
				<div class="row ms-4">
					<div class="col-8">
						<select name="city"
							id="city" class="form-select"
							style="background-color: rgb(99, 173, 207); color: white;">
							<option selected>Điểm đến/Thành phố</option>
							<c:forEach var="city" items="${cityList}">
								<option value="${city.id}">${city.name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-2">
						<select class="form-select" name="capacity"
							style="background-color: rgb(99, 173, 207); color: white;">
							<option selected value="0">Số người</option>
							<option value="1">1 người</option>
							<option value="2">2 người</option>
							<option value="3">3 người</option>
							<option value="4">4 người</option>
							<option value="5">5 người</option>
							<option value="6">6 người</option>
						</select>
					</div>
					<div class="col-2">
						<button class="btn btn-dark"
							style="color: white; font-weight: bold;">Tìm khách sạn</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>