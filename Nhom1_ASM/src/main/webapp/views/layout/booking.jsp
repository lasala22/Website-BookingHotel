<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking</title>
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
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}
</style>
</head>
<body style="background-color: #EDEDED;">

	<div class="container p-3">
		<h2>Đặt phòng khách sạn</h2>
		<strong>Hãy chắc chắn rằng tất cả thông tin trên trang này là
			chính xác trước khi tiến hành thanh toán.</strong>
		<div class="row mt-3">
			<div class="col-8">
				<div class="row me-2">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title" style="font-weight: bold;">
								Đăng nhập với tên <span class="text-danger">${user.lastName}
									${user.firstName}</span>
							</h5>
							<strong class="card-text text-info">(${user.email})</strong>
						</div>
					</div>
				</div>
				<div class="row mt-3 me-2 mb-3">
					<div class="card">
						<div class="card-header">
							<div class="row">
								<div class="col-3">
									<img src="/views/img/hotels_img/${hotel.image}" alt=""
										style="width: 150px; height: 150px;">
								</div>
								<div class="col">
									<p style="font-size: 25px; font-weight: bold;">
										${hotel.hotelName }</p>
								</div>
							</div>
						</div>
						<div class="card-body">
							<h5 class="mt-2">${roomtype.typeName}</h5>
							<div class="row">
								<div class="col">
									<p style="color: grey">Khách/phòng</p>
								</div>
								<div class="col">
									<p>${roomtype.capacity }khách</p>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<p style="color: grey">Kiểu giường</p>
								</div>
								<div class="col">
									<p>${roomtype.description }</p>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<img src="/views/img/rt_img/${roomtype.image}" alt=""
										style="width: 100px; height: 100px;">
								</div>
								<div class="col">
									<div class="row">
										<p style="color: grey;">Không gồm bữa sáng</p>
									</div>
									<div class="row">
										<p style="color: grey;">Wifi miễn phí</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<h3>Chọn ngày</h3>
				<form action="/thanhtoan" method="post" id="my-form">
					<div class="row mt-3">
						<div class="card">
							<div class="row mt-3 mb-4">
								<div class="col">
									<strong>Ngày nhận phòng</strong> <input type="date"
										name="fromDate" class="form-control mt-1" id="fromDate">
								</div>
								<div class="col">
									<strong>Ngày trả phòng</strong><input type="date" name="toDate"
										id="toDate" class="form-control mt-1">
								</div>
							</div>
						</div>
					</div>
					<h2 class="mt-3">Chi tiết giá</h2>
					<div class="row mt-3 me-2">
						<div class="card">
							<div class="row mt-3">
								<div class="col">
									<strong>Thành tiền</strong>
								</div>
								<div class="col">
									<strong class="float-end me-3 "></strong>
								</div>
							</div>
							<div class="row">
								<p class="mt-3" style="font-size: 15px; color: blueviolet;">
									<i class="fa-solid fa-circle-exclamation"
										style="color: #74C0FC;"></i> Thuế và phí là các khoản được
									VooTreeVeeVuu chuyển trả cho khách sạn. Mọi thắc mắc về thuế và
									hóa đơn, vui lòng tham khảo Điều khoản và Điều kiện của
									VooTreeVeeVuu để được giải đáp
								</p>
							</div>
							<hr>
							<div class="row">
								<div class="col">${roomtype.typeName}</div>
								<div class="col">
									<p class="float-end">
										<fmt:formatNumber type="currency" value="${roomtype.price}"
											pattern="#,##0.00 vnđ" maxFractionDigits="0" />
										/Đêm
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col">Thuế và phí</div>
								<div class="col">
									<p class="float-end">5% Tổng tiền</p>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<button class="btn btn-danger mt-3 float-end "
									style="width: 100px;" type="submit">Tiếp tục</button>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="col-4" style="height: 300px;">

				<div class="card ">
					<strong class="mt-2 ms-3">Chính sách hủy và đổi lịch</strong>
					<p class="ms-2 fs-10 p-3">Bạn có giá tốt nhất với phòng này</p>
					<div class="row">
						<p style="color: grey; font-weight: bold;">
							<i class="fa-solid fa-circle-xmark ms-3" style="color: #10e0a2;"></i>
							Đặt phòng này không được hoàn tiền
						</p>
					</div>
					<div class="row">
						<p style="color: grey; font-weight: bold;">
							<i class="fa-solid fa-circle-xmark ms-3" style="color: #10e0a2;"></i>
							Non-reschedulable
						</p>
					</div>

				</div>
				<div class="card mt-3">
					<strong class="ms-3 mt-2">Chính sách lưu trú</strong> <strong
						class="ms-3 mt-2">Chính sách bổ sung</strong>
					<p class="ms-3">CHÍNH SÁCH TRẺ EM:</p>
					<p class="ms-3 pe-3" style="font-size: 14px; color: grey">
						Miễn phí 1 bé dưới 11 tuổi ngủ cùng giường với người lớn. <br>
						Em bé thứ 2 ở cùng giường với người lớn tính thêm phụ phí ăn sáng
						50,000 Vnđ. <br> Bé từ 11 tuổi trở lên tính như người lớn. <br>
						Người lớn ở cùng phòng, phụ thu: 350,000Vnđ/người (đã bao gồm ăn
						sáng). <br> Phụ thu check-in sớm/check-out
						trễ:350,000Vnđ(nhận/trả phòng sớm/trễ 1-5 tiếng trước thời gian
						check-in/out theo quy định)
					</p>
					<strong class="ms-3">Hướng dẫn nhận phòng chung</strong>
					<p class="ms-3 pe-3" style="font-size: 14px; color: grey">
						Child policy: Free of charged for 01 child under 11 years old that
						shares existing bed. Surcharge 50,000Vnđ including breakfast for
						the second child in room. Children from 11 years old will be
						applied adult policy. Additional guest policy: surcharge
						350,000Vnđ/pax including breakfast. Surcharge early check-in/late
						check-out: 350,000Vnđ</p>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="myModal" tabindex="-1"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="myModalLabel">Lỗi!</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">Nội dung thông báo lỗi...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Đóng</button>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$("#my-form").submit(function(event) {
				var fromDate = $("#fromDate").val();
				var toDate = $("#toDate").val();
				var today = new Date();
				if (!fromDate || !toDate) {
					event.preventDefault();
					$("#myModal .modal-body").text("Ngày nhập không hợp lệ!");
					$("#myModal").modal("show");
				} else if (fromDate >= toDate) {
					event.preventDefault();
					// Hiển thị thông báo lỗi
					$("#myModal .modal-body").text("Ngày nhập không hợp lệ!");
					$("#myModal").modal("show");
				} else if (new Date(fromDate) < today + 1) {
					event.preventDefault();
					$("#myModal .modal-body").text("Ngày nhập không hợp lệ!");
					$("#myModal").modal("show");
				} else {
					// Submit form
					$(this).submit();
				}
			});
		});
	</script>
</body>
</html>