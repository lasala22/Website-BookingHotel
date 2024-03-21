<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

#backToTopBtn {
	display: none;
	position: fixed;
	bottom: 20px;
	right: 20px;
	background-color: #007BFF;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding: 10px 15px;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="container">
		<jsp:include page="findingBar.jsp"></jsp:include>
		<div class="row mt-4">
			<div class="col-3"></div>
<!-- 			<div class="col-3 ms-4">
				<b class="ms-2">Xếp theo : </b> <select class="form-select ms-2"
					aria-label="Default select example" name="sort" id="sort">
					<option selected></option>
					<option value="1">Tên khách sạn</option>
					<option value="2">Số sao</option>
					<option value="3">Giá</option>
				</select>
			</div> -->
			<div class="col-3"></div>
			<div class="col-3"></div>
		</div>
		<br>
		<div class="row ps-5">
			<div class="col-md-3">
				<h5>Bộ lọc :</h5>
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">Phạm vi giá</h5>
						<form action="/hotel/list" method="post">
							<div class="row g-3 mb-4">
								<div class="col-sm-6">
									<label>Từ</label> <input type="number" name="min" min="100000"
										max="1500000" class="form-control">
								</div>
								<div class="col-sm-6">
									<label>Đến</label> <input type="number" name="max" min="100000"
										max="1500000" class="form-control">
								</div>
							</div>
							<hr>
							<div class="row mt-4">
								<h5>Hạng sao</h5>
							</div>
							<input type="checkbox" name="star" value="1" id=""> <i
								class="fa-solid fa-star" style="color: #FFD43B;"></i><br> <input
								type="checkbox" name="star" value="2" id=""> <i
								class="fa-solid fa-star" style="color: #FFD43B;"></i><i
								class="fa-solid fa-star" style="color: #FFD43B;"></i><br> <input
								type="checkbox" name="star" id="" value="3"> <i
								class="fa-solid fa-star" style="color: #FFD43B;"></i><i
								class="fa-solid fa-star" style="color: #FFD43B;"></i><i
								class="fa-solid fa-star" style="color: #FFD43B;"></i><br> <input
								type="checkbox" name="star" id="" value="4"> <i
								class="fa-solid fa-star" style="color: #FFD43B;"></i><i
								class="fa-solid fa-star" style="color: #FFD43B;"></i><i
								class="fa-solid fa-star" style="color: #FFD43B;"></i><i
								class="fa-solid fa-star" style="color: #FFD43B;"></i><br> <input
								type="checkbox" name="star" id="" value="5"> <i
								class="fa-solid fa-star" style="color: #FFD43B;"></i> <i
								class="fa-solid fa-star" style="color: #FFD43B;"></i><i
								class="fa-solid fa-star" style="color: #FFD43B;"></i><i
								class="fa-solid fa-star" style="color: #FFD43B;"></i><i
								class="fa-solid fa-star" style="color: #FFD43B;"></i><br>
							<div class="row">
								<div class="col text-end">
									<button class="btn btn-primary mt-3">Lọc</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<br>
			</div>
			<div class="col-md-8">
				<c:forEach var="hotel" items="${listHotel}">
					<div class="card mb-3">
						<div class="row g-0">
							<div class="col-md-4">
								<a href="/hotel/detail/${hotel.id}"><img
									src="/views/img/hotels_img/${hotel.image}"
									class="img-fluid rounded-start" alt="..."
									style="width: 300px; height: 230px"></a>
							</div>
							<div class="col-md-8">
								<div class="card-body">
									<a href="/hotel/detail/${hotel.id}"
										class="text-decoration-none"><b
										class="card-title fs-4 fw-bold">${hotel.name}</b></a>
									<div class="row">
										<div class="col-md-7">
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
												</c:if> </b> <br>
											<p class="mt-5">
												<i class="fa fa-map-marker" aria-hidden="true"></i>
												${hotel.address}, ${hotel.city}
											</p>
										</div>
										<div class="col-md-5 justify-content-end text-end">
											Giá chỉ từ: <br> <span
												class="fs-4 fw-bold float-end" style="color: orangered"><fmt:formatNumber
													type="currency" value="${hotel.price}"
													pattern="#,##0.00 vnđ" maxFractionDigits="0" /></span> <a
												href="/hotel/detail/${hotel.id}">
												<button type="button"
													class="btn btn-danger btn-sm float-end me-3 mt-5">Chọn
													phòng</button>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<br> <br>
			<div class="d-flex justify-content-center mt-3">
				<ul class="pagination">
					<c:if test="${totalPages > 1}">
						<!-- Nút First -->
						<li class="page-item"><a class="page-link"
							href="/hotel/list?page=0&keyword=${keyword}" aria-label="First">
								First </a></li>

						<!-- Hiển thị các số trang -->
						<c:forEach begin="${currentPage - 1 >= 0 ? currentPage - 1 : 0}"
							end="${currentPage + 1}" var="i">
							<c:if test="${i < totalPages}">
								<li class="page-item ${currentPage == i ? 'active' : ''}">
									<a class="page-link"
									href="/hotel/list?page=${i}&keyword=${keyword}">${i + 1}</a>
								</li>
							</c:if>
						</c:forEach>

						<!-- Hiển thị dấu ... -->
						<c:if test="${currentPage + 1 < totalPages - 1}">
							<li class="page-item disabled"><span class="page-link">...</span></li>
						</c:if>

						<!-- Trang cuối cùng -->
						<li class="page-item"><a class="page-link"
							href="/hotel/list?page=${totalPages - 1}&keyword=${keyword}">Last</a></li>
					</c:if>
				</ul>
			</div>
		</div>
		<button id="backToTopBtn">&uarr;</button>
	</div>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var backToTopBtn = document.getElementById("backToTopBtn");

			window.addEventListener("scroll", function() {
				if (document.body.scrollTop > 20
						|| document.documentElement.scrollTop > 20) {
					backToTopBtn.style.display = "block";
				} else {
					backToTopBtn.style.display = "none";
				}
			});

			backToTopBtn.addEventListener("click", function() {
				document.body.scrollTop = 0; // For Safari
				document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE, and Opera
			});
		});
	</script>
</body>
</html>