<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking history</title>
</head>
<body>
	<h3 class="fw-bolder mt-3 text-primary">Lịch sử đặt phòng</h3>
	<hr>
	<!-- List -->
	<c:set var="bookings" value="${bookings}" />

	<c:choose>
		<c:when test="${not empty bookings}">
			<c:forEach var="booking" items="${bookings}">
				<div class="card mb-3">
					<h4 class="card-header fw-bold">
						<a href="/hotel/detail/${booking.room.hotel.hotelid}"
							class="fs-5 text-dark">${booking.room.hotel.hotelName}</a>
					</h4>
					<div class="card-body">
						<div class="row">
							<div class="col-8">
								<h5 class="card-title">
									Mã đặt chỗ: <span class="fw-bold fs-4 text-success">${booking.bookingID}</span>
								</h5>
								<b>Từ</b> <span class="card-text text-primary">${booking.checkInDate}</span>
								<b>đến</b> <span class="card-text text-primary">${booking.checkOutDate}</span>
							</div>
							<div class="col-4">
								<span class="float-end text-danger fs-4"><fmt:formatNumber
										type="currency" value="${booking.totalPrice}"
										pattern="#,##0.00 vnđ" maxFractionDigits="0" /></span> <br>
								<br> <span class="float-end text-success fs-5"><i
									class="fa-regular fa-circle-check"></i>${booking.status}</span>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<h4 class="text-center"><i class="fa-regular fa-face-frown fs-3"></i> Chưa có lịch sử đặt phòng</h4>
			<a href="/hotel/list" class="float-end">Đi đến đặt phòng ngay <i class="fa-solid fa-arrow-right"></i></a>
		</c:otherwise>
	</c:choose>
</body>
</html>