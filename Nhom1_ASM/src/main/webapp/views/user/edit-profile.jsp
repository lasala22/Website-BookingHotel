<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
<style>
label {
	margin-top: 15px;
}
</style>
</head>
<body>
	<form class="row g-3 m-3" action="/profile/edit-profile/update" method="post">
		<div class="card mt-3">
			<div class="card-header">
				<h3 class="fw-bolder text-primary">
					Thông tin cá nhân <i class="fa-regular fa-pen-to-square"></i>
				</h3>
			</div>
			<div class="card-body">
				<div class="col-12">
					<label for="email" class="form-label fw-bold">Email:</label>
					<input class="form-control" name="email" value="${user.email}" readonly="true"/>
				</div>
				<div class="col-12">
					<label for="firstName" class="form-label fw-bold">First
						Name: </label>
					<input class="form-control" name="firstName"  value="${user.firstName }" />
				</div>
				<div class="col-12">
					<label for="lastName" class="form-label fw-bold">Last Name:
					</label>
					<input class="form-control" name="lastName" value="${user.lastName}"/>
				</div>
				<div class="col-6">
					<label for="gender" class="form-label fw-bold">Gender </label><br>
					<input type="radio" name="gender" class="form-check-inline ms-3" value= "Nam"  ${user.gender=='Nam'?'checked':'' }/> Nam
					<input type="radio" name="gender" class="form-check-inline ms-3" value= "Nữ" ${user.gender=='Nữ'?'checked':'' }/> Nữ
					<input type="radio" name="gender" class="form-check-inline ms-3" value= "Khác" ${user.gender=='Khác'?'checked':'' }/> Khác
				</div>
				<div class="row">
					<div class="col-6">
						<label for="phoneNum" class="form-label fw-bold">Phone
							Number: </label>
						<input class="form-control" name="phoneNum" value="${ user.phoneNum}" />
					</div>
					<div class="col-6">
						<label for="birthdate" class="form-label fw-bold">Birth
							date: </label>
						<input class="form-control" name="birthdate" value="${user.birthdate}" />
					</div>
				</div>
				<h3>${message}</h3>
			</div>
			<div class="card-footer">
				<div class="float-end">
					<button type="submit" class="btn btn-success">Lưu</button> <a href="/profile/edit-profile" class="btn btn-secondary">Huỷ</a>
				</div>
			</div>
		</div>
	</form>
</body>
</html>