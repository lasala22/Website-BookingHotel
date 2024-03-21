<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thanh toán</title>
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
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="container">
		<h1 id="error">${error}</h1>
		<h2 class="mt-3">Thanh toán</h2>
		<div class="row mt-3">
			<div class="col-8">
				<div class="card">
					<div class="row">
						<div class="col-4"
							style="height: 610px; background-color: blue; color: white;">
							<h2 class="p-4 ms-4">VooTreePay</h2>
						</div>
						<div class="col-8">
							<div class="row mt-4">
								<h5>Chi tiết giá</h5>
								<div class="row mt-3">
									<div class="col">
										<p style="font-weight: bold; font-size: 14px;">${hotel.hotelName}
											<br> ${roomtype.typeName}
										</p>
									</div>
									<div class="col">
										<p class="float-end"
											style="font-weight: bold; font-size: 14px;">
											<fmt:formatNumber type="currency" value="${roomtype.price}"
												pattern="#,##0.00 vnđ/đêm" maxFractionDigits="0" />
										</p>

									</div>

								</div>
								<div class="row mt-3">
									<div class="col">
										<p style="font-weight: bold; font-size: 14px;">x${countDate}
											Đêm</p>
									</div>
									<div class="col">
										<p class="float-end"
											style="font-weight: bold; font-size: 14px;">
											<fmt:formatNumber type="currency" value="${beforePrice}"
												pattern="#,##0.00 vnđ" maxFractionDigits="0" />
										</p>
									</div>

								</div>
								<div class="row mt-3">
									<div class="col">
										<p style="font-weight: bold; font-size: 14px;">Thuế và phí
										</p>
									</div>
									<div class="col">
										<p class="float-end"
											style="font-weight: bold; font-size: 14px;">
											<fmt:formatNumber type="currency" value="${taxes}"
												pattern="#,##0.00 vnđ" maxFractionDigits="0" />
										</p>
									</div>
									<hr>
								</div>
								<div class="row">
									<div class="col">
										<p style="font-weight: bold; font-size: 14px;">Tổng giá
											tiền</p>
									</div>
									<div class="col">
										<p class="float-end"
											style="font-weight: bold; font-size: 14px;">
											<span id="price"><fmt:formatNumber type="currency"
													value="${totalPrice}" pattern="#,##0.00 vnđ"
													maxFractionDigits="0" /></span>
										</p>
									</div>
								</div>
							</div>
							<form action="/vnpay" method="post" id="checkWallet">
								<button id="submit" class="btn btn-danger float-end me-4 mt-3">Thanh
									toán</button>
								<div id="errorMessage"></div>
							</form>
							<div>
								<a href="/home" class="">Quay lại</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="card">
					<div class="card-header">
						<h5 style="color: grey;">MÃ ĐẶT CHỖ</h5>
						<p>${bkID}</p>
					</div>
					<div class="card-body">
						<h5 style="color: grey">KIỂM TRA THÔNG TIN ĐẶT PHÒNG</h5>
						<strong>${hotel.hotelName}</strong>
						<ul class="mt-2" style="color: grey; font-size: 14px;">
							<li>
								<p>${bk.checkInDate }-${bk.checkOutDate}</p>
							</li>
							<li>
								<p>${countDate}đêm</p>
							</li>
							<li>
								<p>${roomtype.typeName}</p>
							</li>
							<li>
								<p>1 phòng</p>
							</li>
							<li>
								<p>Không bao gồm bữa sáng</p>
							</li>
						</ul>
					</div>
					<div class="card-footer" style="font-size: 14px;">
						<strong style="color: grey; font-size: 14px;">KHÁCH</strong>
						<p style="font-size: 14px;">${user.lastName} ${user.firstName}</p>
						<hr>
						<strong style="color: grey; font-size: 14px;">CHI TIẾT
							NGƯỜI LIÊN LẠC</strong>
						<p class="mt-3"></p>
						<p>${hotel.phoneNum}</p>
						<p>${hotel.email }</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal" id="errorMessageModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Lỗi</h5>
				</div>
				<div class="modal-body">
					<p id="errorMessage"></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Đóng</button>
				</div>
			</div>
		</div>
	</div>
	<script>
    const checkoutForm = document.getElementById("checkWallet");
    const checkoutButton = document.getElementById("submit");
    const errorMessageElement = document.getElementById("errorMessage");
    const productPrice = document.getElementById("price").value; // Giá sản phẩm
	const castPrice = parseDouble(productPrice);
    checkoutButton.addEventListener("click", async (event) => {
      event.preventDefault();

      const response = await fetch(submit.dataset.url);

      if (response.status === 200) {
        const balance = await response.json();
	
        if (balance < castPrice) {
          errorMessageElement.textContent = "Số dư tài khoản không đủ!";
          return;
        }
        checkWallet.submit();
      } else {
        errorMessageElement.textContent = "Lỗi xảy ra khi kiểm tra số dư tài khoản!";
      }
    });
    </script>
</body>
</html>