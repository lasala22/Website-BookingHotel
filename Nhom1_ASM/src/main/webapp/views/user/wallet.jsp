<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
a {
	text-decoration: none;
}

a:hover {
	background-color: rgb(234, 237, 237);
}
</style>
<title>Wallet</title>
</head>
<body>
	<div class="card mt-3">
		<div class="card-header bg-secondary">
			<h3 class="fw-bolder text-white">
				Ví tiền <i class="fa-regular fa-sack-dollar fs-3"></i>
			</h3>
		</div>
		<div class="card-body">
			<div class="card-title fw-bold">
				Số dư hiện tại: <span class="text-danger"><fmt:formatNumber
						type="currency" value="${wallet.credit}" pattern="#,##0.00 vnđ"
						maxFractionDigits="0" /></span>
			</div>
			<form class="row row-cols-lg-auto g-3 align-items-center" action="/wallet/add"
				method="post">
				
				<div class="col-2">
					<label for="">Nạp tiền:</label>
				</div>
				<div class="col-10">
					<input type="number" name="credit" class="form-control"/>
				</div>
				<div class="col-12">
					<button type="submit" class="btn btn-primary"
						formaction="/profile/wallet/add">Nạp</button>
				</div>
				<div>
					<h3>${tenten}</h3>
				</div>
			</form>
		</div>
	</div>
</body>
</html>