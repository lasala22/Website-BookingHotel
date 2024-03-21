<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Xác minh OTP</title>
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
<style type="text/css">
body {
	background-image: url('/views/img/cover.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}

label {
	font-weight: bold;
}
</style>
</head>
<body>

	

<div class="container">
		<a href=""><img src="/views/img/VooTreeVeeVuuLogo.png" alt=""
			style="margin-top: 30px; width: 30%;"></a>
		<div class="row">
			<div class="col-8"></div>
			<div class="col-4 p-4"
				style="height: 300px; background-color: white; border-radius: 15px; border: 1px solid gray;">
				<h1>${message}</h1>
				<form action="/verify-otp-forgot" method="post" class="form">
					<input type="hidden" name="email" value="${email}" class="form-control"> 
					<input
						type="text" name="otp" placeholder="Mã OTP" required class="form-control"> 
						<input
						type="submit" value="Xác minh" class="btn btn-danger">
						<a href="/resend-otp-forgot" class="btn btn-secondary">Gửi lại mã OTP</a>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>