<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
nav1 {
	text-align: left;
}

nav1 ul li {
	display: inline;
	padding: 0 40px;
	vertical-align : middle;
}
</style>
</head>
<body>
	<nav1>
	
	<audio src="/resources/mp3/14 - The Weeknd, Kendrick Lamar - Pray For Me.mp3" controls="" preload="auto" /> 
	<audio src="/resources/mp3/Cowboy Bebop - Rain.mp3" controls="" preload="auto" /> 
	<ul>
		<li><input type="image" src="<c:url value="/resources/img/previous.png" />" style="max-width:15px; margin-bottom:8px;"></li>
		<li><input type="image" src="<c:url value="/resources/img/pause.png" />" style="max-width:30px;"></li>
		<li><input type="image" src="<c:url value="/resources/img/play.png" />" style="max-width:30px;"></li>
		<li><input type="image" src="<c:url value="/resources/img/next.png" />" style="max-width:15px; margin-bottom:8px;"></li>
		<li">honne - warm on a cold night</li>
		
	</ul>
	</nav1>

</body>
</html>