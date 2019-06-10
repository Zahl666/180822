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
	$(function(){
		function wrapWindowMask(){
			var maskheight = $(document).height();
			var maskwidth = $(document).width();
			
			$('#Wrapper').css({
				'width':maskwidth,'height':maskheight
			});
			$('#Wrapper').fadeTo("slow",0.8); 
		}
		$('#button1').click(function(){
			$.ajax({
				type : "POST",
				url : "/needHelpID",
				success : function(data) {
					$('.popup').html(data); //넘어온 데이터는 html 상태이기에 display:none으로 해두었던 div를 show시켜주고, 그 뒤에 ajax로 가지고온 data를 넣어준다
					$('.popup').css("display", "block");
					
					//함수실행
					wrapWindowMask();
					
				}, //end success
				error : function(xhr, status) {
					alert(xhr + ":" + status);
				}
		
			});//end ajax
		});
		$('#button2').click(function(){
			$.ajax({
				type : "POST",
				url : "/needHelpPW",
				success : function(data) {
					$('.popup').html(data); //넘어온 데이터는 html 상태이기에 display:none으로 해두었던 div를 show시켜주고, 그 뒤에 ajax로 가지고온 data를 넣어준다
					$('.popup').css("display", "block");
					
					//함수실행
					wrapWindowMask();
					
				}, //end success
				error : function(xhr, status) {
					alert(xhr + ":" + status);
				}
		
			});//end ajax
		});
	});
</script>
<style>
	 
	.popupForm {
		width : 400px;
		height : 300px;
		position:absolute;
		z-index : 10;
    	border-radius: 10px;
    	padding: 10px;
		text-align : center;
		left : 0;
		right : 0;
		top : 0;
		bottom : 0;
		margin : auto;
	}
	.popupHeader {
		width: 100%;
		height: 40%;
		font-size: 32px;
		color: cornflowerblue;
	}
	.popupContent {
		color:white; 
		width: 100%;
		height: 60%;
	}
	
</style>
</head>
<body id="bodyId">
	<form class="popupForm" method="POST" style="display: block;">

		<div class="popupHeader">
			Having<br>Trouble<br>Signing In?</div>
		<div class="popupContent">
			I don't know my <input id="button1" type="button" value="E-mail?" style="border:none; background:none; outline:none; color: cornflowerblue; cursor:pointer;"><br>
			I don't know my <input id="button2" type="button" value="PassWord?" style="border:none; background:none; outline:none; color: cornflowerblue; cursor:pointer;">
		</div>
		
	</form>
	<div id="Wrapper"></div>
	
</body>
</html>