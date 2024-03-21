<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thống kê doanh thu theo khách sạn</title>
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
<link rel="stylesheet" href="/views/css/index.css">
<link href="/views/css/sb-admin-2.min.css" rel="stylesheet">
<link href="/views/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>

<style>
.sidebar {
	background-color: #0099FF;
}

* {
	font-size: large;
}

hr {
	border: 0.5px solid;
	color: white;
}
</style>
</head>
<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="navbar-nav sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="/admin/index">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">VooTreeVeeVuu</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="/admin/index"> <i class="fas fa-fw fa-tachometer-alt"></i>
					<span>Dashboard</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Quản trị</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i><span>CRUD</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Các loại phần:</h6>
						<a class="collapse-item" href="/admin/hotel">Khách sạn</a> <a
							class="collapse-item" href="/admin/room">Phòng</a> <a
							class="collapse-item" href="/admin/roomtype">Loại phòng</a>
					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link" href="/admin/user">
					<i class="fas fa-fw fa-solid fa-user"></i><span>Người dùng</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Thống kê</div>

			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseOne"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i><span>Biểu đồ</span>
			</a>
				<div id="collapseOne" class="collapse show"
					aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Chọn loại:</h6>
						<a class="collapse-item ps-1" href="/admin/thongke-theoKS">1.
							Thống kê doanh thu<br>theo khách sạn
						</a> <a class="collapse-item active ps-1" href="/admin/thongke-topKS">2.
							Top khách sạn<br>được đặt nhiều
						</a>
					</div>
				</div></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="/admin/booking-history"> <i class="fas fa-fw fa-table"></i>
					<span>Lịch sử booking</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<li class="nav-item"><a class="nav-link" href="/home"> <i
					class="fas fa-fw fa-home"></i> <span>Về trang web</span>
			</a></li>
		</ul>
		<!-- End of Sidebar -->
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a class="nav-link"
							href="/profile/edit-profile"><span
								class="mr-2 d-none d-lg-inline text-gray-600 small">Welcome,<span
									class="text-primary"> ${user.lastName} ${user.firstName}</span></span>
						</a></li>
						<div class="topbar-divider d-none d-sm-block"></div>
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link text-danger" href="/logout">Logout</a></li>
					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Content -->
				<div class="container">
					<%-- <form action="/admin/thongke-theoKS" method="post">
						<div class="row">
							<div class="col-6">
								<select name="hotelName" id="city" class="form-select">
									<option selected>Chọn khách sạn</option>
									<c:forEach var="hotel" items="${listHotel}">
										<option value="${hotel.hotelid}">${hotel.hotelName}</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-6">
								<button class="btn btn-primary">Thống kê</button>
							</div>
						</div>

					</form> --%>
					<canvas id="myChart"></canvas>
				</div>
				<!-- End content -->
			</div>
		</div>
	</div>

	<!-- Script chart -->
	<script>
		let myChart = document.getElementById('myChart').getContext('2d');
		// Global Options
		Chart.defaults.global.defaultFontFamily = 'Lato';
		Chart.defaults.global.defaultFontSize = 18;
		Chart.defaults.global.defaultFontColor = '#777';
		
		let massPopChart = new Chart(myChart, {
			type :'line', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
			data : {
				labels: ${listHotelName},
				datasets : [ {
					label : 'Số lần',
					data : ${listDataSoLan},
					//backgroundColor:'green',
					backgroundColor: 'rgba(0, 0, 0, 0)', // transparent background
				    borderWidth: 3,
				    borderColor: 'red', // red border color
				    hoverBorderWidth: 3,
				    hoverBorderColor: '#000',
				} ]
			},
			options : {
				scales : {
					yAxes: [{
                        display: true,
                        ticks: {
                            beginAtZero: true,
                            steps: 1
                        }
                    }],
                    offset: false
				},
				title : {
					display : true,
					text : 'Top các khách sạn được đặt nhiều nhất',
					fontSize : 25
				},
				legend : {
					display : true,
					position : 'right',
					labels : {
						fontColor : '#000'
					}
				},
				layout : {
					padding : {
						left : 50,
						right : 0,
						bottom : 0,
						top : 0
					}
				},
				tooltips : {
					enabled : true
				}
			}
		});
	</script>

	<!-- End script chart -->

	<!-- Bootstrap core JavaScript-->
	<script src="/views/vendor/jquery/jquery.min.js"></script>
	<script src="/views/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/views/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/views/css/sb-admin-2.min.js"></script>
</body>
</html>