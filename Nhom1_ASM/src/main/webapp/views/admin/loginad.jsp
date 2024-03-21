<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
body {
	background-image: url('/views/cover.jpg');
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
		<a href=""><img src="/views/VooTreeVeeVuuLogo.png" alt=""
			style="margin-top: 30px; width: 30%;"></a>
		<div class="row">
			<div class="col-8"></div>
			<div class="col-4 p-4"
				style="height: 350px; background-color: white; border-radius: 15px; border: 1px solid gray;">
				<form action="/loginad" class="form" method="post">
					<h3 class="fw-bold">Đăng nhập tài khoản</h3>
					<div class="mb-2">
						<b><i>${message}</i></b>
					</div>
					<label for="" class="form-label mt-4">Email</label> <input
						type="email" name="email" id="" class="form-control"> <label
						for="" class="form-label mt-3">Mật khẩu</label> <a
						class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover float-end mt-3 pt-1"
						href="#" style="font-size: 14px;"> Quên mật khẩu? </a> <input
						type="password" name="password" id="" class="form-control">
					<br>
					<div class="row">
						<div class="col-4 mt-2 ">
							<!-- <a href="/login" class="btn btn-danger">Đăng nhập</a> -->
							<button type="submit" class="btn btn-danger" >Login</button>
						</div>
						<div class="col-6">
							<strong style="font-size: 14px;">Bạn chưa có tài khoản?</strong>
							<a href="/signup"
								class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover"
								style="font-size: 14px">Đăng ký</a>
						</div>
					</div>

				</form>

			</div>
		</div>
	</div>
</body>
</html>