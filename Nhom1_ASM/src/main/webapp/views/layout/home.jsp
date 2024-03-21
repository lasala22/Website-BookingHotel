<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ Khách Sạn</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

.carousel-item img {
	height: 600px;
	/* Đặt chiều cao mong muốn cho tất cả các ảnh trong carousel */
	object-fit: cover;
	/* Đảm bảo ảnh không bị biến dạng khi chỉnh kích thước */
	filter: brightness(60%);
	/* Độ mờ - giảm độ sáng của ảnh */
}

.card a {
	color: inherit;
	/* Kế thừa màu chữ từ phần tử cha */
	text-decoration: none;
	/* Bỏ gạch chân mặc định của thẻ a */
}

/* CSS tùy chỉnh cho hai card đầu tiên */
.custom-row-location .col:nth-child(-n+2) {
	/* Chiếm 50% chiều rộng của parent (2 card mỗi dòng) */
	flex: 0 0 50%;
}

.custom-row-location .col:nth-child(-n+2) img {
	/* max-width: 50%; Chiều rộng tối đa là 50% */
	max-height: 300px !important;
	object-fit: cover;
}

.list-unstyled a {
	text-decoration: none;
	color: grey;
	line-height: 2;
}

.card-hotel {
	transition: transform 0.3s; /* Add a smooth transition effect */
}

.card-hotel:hover {
	transform: scale(1.05); /* Scale the card on hover */
}

.prod-link {
	position: relative;
}

.img-text {
	position: absolute;
	bottom: 0%;
	width: auto;
	left: 0;
	margin-left: 35px;
	background-image: linear-gradient(to top, transparent, transparent);
	color: #fff;
	padding: 10px;
	transition: bottom 0.4s ease-in-out;
	opacity: 0;
	word-spacing: 2px;
	background-image: linear-gradient(to top, transparent, transparent);
	font-weight: bold;
}

.prod-link:hover .img-prod {
	filter: blur(20px);
}

.prod-link:hover .img-text {
	bottom: 100px;
	opacity: 1;
}
</style>
</head>
<body>

	<!-- Carousel -->
	<div id="carouselExample" class="carousel slide"
		data-bs-ride="carousel" data-bs-interval="1500">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/views/img/slide3.jpg" class="d-block w-100"
					alt="Hình ảnh 1">
				<div class="carousel-caption d-none d-md-block">
					<h5>Khám Phá Bộ Sưu Tập Khách Sạn - Đặt Phòng Ngay, Bắt Đầu
						Hành Trình!</h5>

				</div>
			</div>
			<div class="carousel-item">
				<img src="/views/img/slide2.jpg" class="d-block w-100"
					alt="Hình ảnh 2">
				<div class="carousel-caption d-none d-md-block">
					<h5>Dạo Chơi Mà Không Lo Lắng - Đặt Phòng Dễ Dàng, Hưởng Trọn
						Niềm Vui!</h5>

				</div>
			</div>
			<div class="carousel-item">
				<img src="/views/img/slide1.jpg" class="d-block w-100"
					alt="Hình ảnh 3">
				<div class="carousel-caption d-none d-md-block">
					<h5>Nghỉ Dưỡng Đẳng Cấp - Tìm Phòng, Đặt Chỗ, Thư Giãn Ngay
						Lập Tức!</h5>

				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExample" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExample" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<!-- Main -->
	<div class="container mt-5">
		<!-- Địa điểm thịnh hành -->
		<div class="mb-5">
			<h4 style="color: rgb(35, 93, 159);"
				class="badge text-bg-primary fs-5">Điểm đến đang thịnh hành</h4>
			<br> <i class="ps-3">*Các lựa chọn phổ biến nhất cho du
				khách từ Việt Nam</i>
			<div
				class="row row-cols-1 row-cols-md-3 g-4 custom-row-location w-75"
				style="margin-left: 150px">
				<div class="col">
					<div class="card text-bg-dark h-100">
						<a href="/hotel/listTP?city=HCM" class="prod-link"> <img
							src="/views/img/tp_hcm.jpg" class="card-img img-prod" alt="...">
							<div class="img-text border border-light">
								<p class="">Xem danh sách khách sạn</p>
							</div>
							<div class="card-img-overlay">
								<h5 class="card-title fw-bold fs-3 ms-4 mt-4 prod-title">
									TP. Hồ Chí Minh <img src="img/VietNam.png" alt="">
								</h5>
							</div>
						</a>

					</div>
				</div>
				<div class="col">
					<div class="card text-bg-dark h-100">
						<a href="/hotel/listTP?city=DaLat" class="prod-link"> <img
							src="/views/img/da_lat.jpg" class="card-img img-prod" alt="...">
							<div class="img-text border border-light">
								<p class="">Xem danh sách khách sạn</p>
							</div>
							<div class="card-img-overlay">
								<h5 class="card-title fw-bold fs-3 ms-4 mt-4 prod-title">
									Đà Lạt <img src="img/VietNam.png" alt="">
								</h5>
							</div>
						</a>

					</div>
				</div>
				<div class="col">
					<div class="card text-bg-dark h-100">
						<a href="/hotel/listTP?city=HaNoi" class="prod-link"> <img
							src="/views/img/ha_noi.jpg" class="card-img img-prod" alt="...">
							<div class="img-text border border-light">
								<p class="">Xem danh sách khách sạn</p>
							</div>
							<div class="card-img-overlay">
								<h5 class="card-title fw-bold fs-3 ms-4 mt-4 prod-title">
									Hà Nội<img src="img/VietNam.png" alt="">
								</h5>
							</div>
						</a>

					</div>
				</div>
				<div class="col ">
					<div class="card text-bg-dark h-100">
						<a href="/hotel/listTP?city=DaNang" class="prod-link"> <img
							src="/views/img/da_nang.jpg" class="card-img img-prod" alt="...">
							<div class="img-text border border-light">
								<p class="">Xem danh sách khách sạn</p>
							</div>
							<div class="card-img-overlay">
								<h5 class="card-title fw-bold fs-3 ms-4 mt-4 prod-title">
									Đà Nẵng<img src="img/VietNam.png" alt="">
								</h5>
							</div>
						</a>

					</div>
				</div>
				<div class="col">
					<div class="card text-bg-dark h-100">
						<a href="/hotel/listTP?city=VungTau" class="prod-link"> <img
							src="/views/img/vungtau.jpg" class="card-img img-prod" alt="...">
							<div class="img-text border border-light">
								<p class="">Xem danh sách khách sạn</p>
							</div>
							<div class="card-img-overlay">
								<h5 class="card-title fw-bold fs-3 ms-4 mt-4 prod-title">
									Vũng Tàu<img src="img/VietNam.png" alt="">
								</h5>
							</div>
						</a>

					</div>
				</div>
			</div>
		</div>
		<hr>
		<!-- Lí do sử dụng -->
		<div class="pt-3 pb-4">
			<h3 class="text-center">Tại sao nên đặt chỗ với VooTreeVeeVuu?</h3>
			<div class="row row-cols-1 row-cols-md-3 g-4 mt-3">
				<div class="col">
					<div class="card border-0">
						<img src="/views/img/best-choice.png" class="card-img-top"
							alt="..." style="width: 150px; height: 150px; margin-left: auto;margin-right:auto">
						<div class="card-body">
							<h5 class="card-title">VooTreeVeeVuu – Lựa chọn hàng đầu khi
								đặt phòng khách sạn trực tuyến</h5>
							<p class="card-text">Là đại lý đặt phòng khách sạn hàng đầu
								Đông Nam Á, kể từ khi ra mắt đến nay, VooTreeVeeVuu đã giúp mọi
								chuyến du lịch của hơn 20 triệu tín đồ du lịch trở nên đơn giản
								hơn bao giờ hết. Không chỉ hoạt động tại Đông Nam Á,
								VooTreeVeeVuu hiện là đối tác của trên 200.000 khách sạn toàn
								thế giới, sẵn sàng đồng hành cùng bạn mọi lúc mọi nơi.</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card border-0">
						<img src="/views/img/easy.png" class="card-img-top" alt="..."
							style="width: 150px; height: 150px;margin-left: auto;margin-right:auto">
						<div class="card-body">
							<h5 class="card-title">Tích hợp các tính năng ưu việt, đặt
								phòng khách sạn trên VooTreeVeeVuu đơn giản hơn bao giờ hết</h5>
							<p class="card-text">Mọi thông tin chi tiết nhất về khách sạn
								luôn được cập nhật thường xuyên. Các tiện nghi, khu vực lân cận,
								và phần nhận xét từ các khách hàng trước sẽ giúp bạn có một đánh
								giá tổng quan về khách sạn đang cân nhắc. Mức giá hiển thị cũng
								là mức giá cuối cùng bạn phải thanh toán, đã bao gồm thuế, không
								phí giao dịch hoặc chi phí ẩn.</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card border-0">
						<img src="/views/img/loyal-customer.png" class="card-img-top"
							alt="..." style="width: 150px; height: 150px;margin-left: auto;margin-right:auto">
						<div class="card-body">
							<h5 class="card-title">Trải nghiệm người dùng thân thiện tại
								VooTreeVeeVuu</h5>
							<p class="card-text">Giao diện của website lẫn ứng dụng
								VooTreeVeeVuu đều chú trọng vào sự tối giản, vừa tiết kiệm thời
								gian thao tác, vừa đơn giản nhất ngay cả với những người không
								sành công nghệ. Bạn có thể quản lý mọi thông tin đặt phòng của
								mình chỉ với một ứng dụng mà không cần bất kỳ giấy tờ rắc rối.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<!-- Khách sạn nổi tiếng -->
		<div class="mb-5">
			<h4 style="color: rgb(35, 93, 159);">
				<i class="fa-solid fa-building fa-xl" style="color: #74C0FC;"></i>
				Top khách sạn xu hướng
			</h4>
			<br>
			<div class="row row-cols-1 row-cols-md-4 g-4">
				<c:forEach var="hotel" items="${hotels}">
					<div class="col">
						<div class="card card-hotel h-100 ">
							<a href="/hotel/detail/${hotel.id}"> <img
								src="/views/img/hotels_img/${hotel.image}" class="card-img-top"
								style="width: 305px; height: 250px" alt="...">
								<div class="card-body">
									<span class="card-title fs-5 fw-bold mb-5">${hotel.name}</span>
									<p class="card-text">
										<c:if test="${hotel.stars == 5}">
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
										</c:if>
										<c:if test="${hotel.stars == 4}">
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
										</c:if>
										<c:if test="${hotel.stars == 3}">
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
										</c:if>
										<c:if test="${hotel.stars == 2}">
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
										</c:if>
										<c:if test="${hotel.stars == 1}">
											<i class="fa-solid fa-star" style="color: #FFD43B;"></i>
										</c:if>
									</p>
									<p class="text-end text-danger mt-3">
										<span class="me-3 text-black">Giá chỉ từ:</span> <span
											class="fs-4 fw-bold float-end me-3 badge round-pill text-bg-danger"
											style="color: orangered"><fmt:formatNumber
												type="currency" value="${hotel.price}" pattern="#,##0.00 đ"
												maxFractionDigits="0" />/đêm</span>
									</p>
								</div>
							</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

		<!-- Banner -->
		<div class="mb-5 container">
			<img src="/views/img/Banner.png" class="img-fluid" alt="">
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>

	<script src="https://kit.fontawesome.com/6689c10aee.js"
		crossorigin="anonymous"></script>
</body>
</html>