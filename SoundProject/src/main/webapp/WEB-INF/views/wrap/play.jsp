<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script>
	
</script>
<style>
.popupForm {
	width: 400px;
	height: 300px;
	position: absolute;
	z-index: 10;
	border-radius: 10px;
	padding: 10px;
	text-align: center;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	margin: auto;
}

.popupHeader {
	width: 100%;
	height: 40%;
	font-size: 32px;
	color: cornflowerblue;
}

.popupContent {
	color: white;
	width: 100%;
	height: 60%;
}
</style>
<script>
</script>
</head>
<body id="bodyId">
	<form class="popupForm" action="/signInCheck" method="POST" style="display: block;">

		<div class="popupHeader">Play List</div>
		<div class="popupContent">
		
			
			</div>
		</div>
	</form>
	<div id="Wrapper"></div>

</body>
</html>