<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Ký</title>
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
				style="height: auto; background-color: white; border-radius: 15px; border: 1px solid gray;">		
				<form action="/signup" class="form" method="post">	
				    <h3 class="fw-bold text-dark">Đăng ký tài khoản</h3>
				    <b class="text-danger"><i>${error}</i></b>
				    <label for="email" class="form-label mt-1">Email</label>
				    <input type="email" class="form-control" name="email" id="email" required>
				    <label for="firstName" class="form-label mt-1">Họ</label>
				    <input type="text" class="form-control" name="firstName" placeholder="Họ" required>
				    <label for="lastName" class="form-label mt-1">Tên</label>
				    <input type="text" class="form-control" name="lastName" placeholder="Tên" required>
				    <label for="phoneNum" class="form-label mt-1">Số điện thoại</label>
				    <input type="text" class="form-control" name="phoneNum" id="phoneNum">
				    <label for="birthdate" class="form-label mt-1">Ngày sinh</label>
				    <input type="date" class="form-control" name="birthdate" id="birthdate">
				    <label for="gender" class="form-label mt-1">Giới tính</label> <br>
				    <input type="radio" name="gender" id="genderMale" value="Nam" checked> Nam
				    <input type="radio" name="gender" id="genderFemale" value="Nữ"> Nữ
				    <input type="radio" name="gender" id="genderOther" value="Khác"> Khác <br>
				    <label for="password" class="form-label mt-1">Tạo mật khẩu</label>
				    <input type="password" name="password" id="password" class="form-control" required> <br>
				    <button class="btn btn-danger" type="submit">Đăng ký</button>  
				    <a href="/login" class="ms-3 float-end mt-2"><i class="fa-solid fa-arrow-left"></i> Quay lại trang đăng nhập</a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>