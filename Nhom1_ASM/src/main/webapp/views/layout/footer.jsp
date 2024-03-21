<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</style>
</head>
<body>
	<div class="container-fluid mt-5"
		style="background-color: #1C2930; color: azure;">
		<div class="row pt-5">
			<!-- Cột 1 -->
			<div class="col-md-3">
				<div>
					<img src="/views/img/logo-removebg-preview.png" alt="" width="100%">
				</div>
				<p></p>
				<p>Email: VooTreeVeeVuu@fpt.edu.vn</p>
				<p>Điện thoại: (123) 456-7890</p>
			</div>
			<!-- Cột 2 -->
			<div class="col-md-3">
				<h5>Về chúng tôi</h5>
				<ul class="list-unstyled">
					<li><a href="#">Cách đặt chỗ</a></li>
					<li><a href="#">Liên hệ chúng tôi</a></li>
					<li><a href="#">Trợ giúp</a></li>
					<li><a href="#">Tuyển dụng</a></li>
					<li><a href="#">Về chúng tôi</a></li>
				</ul>
				<h5>Theo dõi chúng tôi trên</h5>
				<ul class="list-unstyled">
					<li><a href="#"><i class="fab fa-facebook"></i> Facebook</a></li>
					<li><a href="#"><i class="fab fa-twitter"></i> Twitter</a></li>
					<li><a href="#"><i class="fab fa-instagram"></i> Instagram</a></li>
				</ul>
			</div>
			<!-- Cột 3 -->
			<div class="col-md-3">
				<h5>Sản phẩm</h5>
				<ul class="list-unstyled">
					<li><a href="#">Vé máy bay</a></li>
					<li><a href="#">Khách sạn</a></li>
					<li><a href="#">Combo tiết kiệm</a></li>
					<li><a href="#">Xperience</a></li>
					<li><a href="#">Đưa đón sân bay</a></li>
					<li><a href="#">Biệt thự</a></li>
					<li><a href="#">Căn hộ</a></li>
					<li><a href="#">Car Rental</a></li>
					<li><a href="#">Vé xe khách</a></li>
				</ul>
			</div>
			<!-- Cột 4 -->
			<div class="col-md-3">
				<h5>Khác</h5>
				<ul class="list-unstyled">
					<li><a href="#">Affiliate</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">Chính Sách Quyền Riêng</a></li>
					<li><a href="#">Điều khoản & Điều kiện</a></li>
					<li><a href="#">Quy chế hoạt động</a></li>
					<li><a href="#">Đăng kí nơi nghỉ của bạn</a></li>
					<li><a href="#"></i>Đăng ký doanh nghiệp hoạt động du lịch của
							bạn</a></li>
					<li><a href="#"></i>Khu vục báo chí</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>