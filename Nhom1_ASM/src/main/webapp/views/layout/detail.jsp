<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>Detail</title>
</head>
<style>
::placeholder {
	color: white !important;
	opacity: 1;
	/* Firefox */
}

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}
</style>
<body>
	<jsp:include page="findingBar.jsp"></jsp:include>
	<div class="container">
		<div class="row align-items-start mt-4">
			<div class="col-sm-9">
				<h2>${hotel.hotelName}</h2>
				<div class="d-flex align-items-center">
					<div class="small-ratings">
						<b><c:if test="${hotel.stars == 5}">
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
							</c:if> <c:if test="${hotel.stars == 4}">
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
							</c:if> <c:if test="${hotel.stars == 3}">
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
							</c:if> <c:if test="${hotel.stars == 2}">
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
							</c:if> <c:if test="${hotel.stars == 1}">
								<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
							</c:if> </b>
					</div>
				</div>
				<p>
					<i class="fa fa-map-marker" aria-hidden="true"></i>
					${hotel.address}, ${hotel.city}
				</p>
			</div>

		</div>


		<!--carousel -->
		<div id="carouselExampleIndicators" class="carousel slide">
			<div class="carousel-inner " style="height: 600px;">
				<div class="carousel-item active">
					<img src="/views/img/hotels_img/${hotel.image}"
						class="d-block w-100" alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<br>
		<div class="card">
			<div class="card-body">
				<b>Giới thiệu cơ sở lưu trú</b> <br>
				<p class="card-text">${hotel.description }</p>
			</div>
		</div>
		<br>
		<div class="card g-3" style="background-color: #00BFFF;">
			<h5 class="card-header" style="font-weight: bold;">Những phòng
				còn trống tại khách sạn</h5>
			<div class="card-body">
				<c:forEach var="rt" items="${roomType}">
					<div class="card mb-4">
						<div class="row">
							<div class="col-sm-3">
								<img src="/views/img/rt_img/${rt.image}" class="card-img-top"
									style="width: 305px; height: 250px" alt="...">
							</div>
							<div class="col-sm-9">
								<div class="table-responsive">
									<table class="table table-borderless align-middle mt-2">
										<h5 class="fw-bold pt-3">${rt.typeName}</h5>
										<thead>
											<tr>
												<th><i class="fa-solid fa-bed"></i> ${rt.description }</th>
												<th><i class="fa-solid fa-children"></i> ${rt.capacity }
													khách</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><i class="fa-solid fa-utensils"></i> Không gồm bữa
													sáng</td>
											</tr>
											<tr>
												<td><i class="fa-solid fa-wifi"></i> Wifi miễn phí</td>
												<td></td>
												<td style="color: orangered; font-weight: bold;"><span
													class="fs-5 fw-bold me-3 float-end"
													style="color: orangered"><fmt:formatNumber
															type="currency" value="${rt.price}" pattern="#,##0.00 đ"
															maxFractionDigits="0" />/phòng/đêm</span></td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td><a href="/booking/${rt.typeid}"
													class="btn btn-warning float-end me-4" type="button"
													id="submit">Đặt ngay</a></td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<br>
			</div>
		</div>
	</div>

</body>
</html>