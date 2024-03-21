<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile password change</title>
</head>
<body>
	<div class="card m-3">
		<div class="card-header">
			<h3 class="fw-bolder text-primary">
				Đổi mật khẩu <i class="fa-regular fa-pen-to-square"></i>
			</h3>
		</div>
		<div class="card-body">
			<form class="row g-3 m-3" action="/profile/change" method="post">	
				<div class="col-md-12">
					<label class="form-label fw-bold">Mật khẩu cũ :</label> <input
						class="form-control" name="password" type="password" />
				</div>
				<div class="col-md-12">
					<label class="form-label fw-bold">Mật khẩu mới:</label> <input
						class="form-control" name="newpassword" type="password" />
				</div>
				<div class="col-md-12">
					<label class="form-label fw-bold">Xác nhận mật khẩu mới:</label> <input
						class="form-control" name="confirmpassword" type="password" />
				</div>
				<div class="card-footer">
					<div class="float-end">
						<button class="btn btn-success">Lưu</button> <a href="/profile/pass-change"
							class="btn btn-secondary">Huỷ</a>
					</div>
				</div>
				<h5 class="text-primary">${mess}</h5>
			</form>
		</div>
	</div>
</body>
</html>