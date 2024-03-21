<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	font-family: Godwit, MuseoSans, -apple-system, BlinkMacSystemFont,
		"Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol";
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}
</style>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<jsp:include page="${view}"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>