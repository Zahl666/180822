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
		/* $('#submit1').click(function(){
			alert("가입되었습니다.");
		}) */
		$('.needHelp').click(function(){
			$.ajax({
				type : "POST",
				url : "/needHelp",
				success : function(data) {
					$('.popup').html(data); //넘어온 데이터는 html 상태이기에 display:none으로 해두었던 div를 show시켜주고, 그 뒤에 ajax로 가지고온 data를 넣어준다
					$('.popup').css("display", "block");
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
	 html, body { overflow: hidden; }
	.popupForm {
		width : 400px;
		height : 300px;
		position:absolute;
		z-index : 10;
    	padding: 10px;
		text-align : left;
		left : 0;
		right : 0;
		
		margin : auto;
		vertical-align : middle;
	}
	.popupHeader {
		width: 100%;
		height: 40%;
		font-size: 32px;
		color: cornflowerblue;
		text-align : center;
	}
	.popupContent {
		color:white; 
		width: 100%;
		height: 60%;
	}
	
</style>
</head>
<body id="bodyId">
	<form class="popupForm" action="/createAccountSucess" method="POST" style="display: block;">

		<div class="popupHeader">
			Welcome to<br>Join Us</div>
		<div class="popupContent">
			E-mail : <input name="email" type="text" style="width:150px; "><br><br>
			Name : <input name="name" type="text" style="width:150px;"><br><br>
			PassWord : <input name="password" type="password" style="width:150px; "><br><br>
			P/W Check : <input type="password" style="width:150px; "><br><br>
			<div style="margin-top:20px; text-align:center;">
			<input id="submit1" type="submit" style="width:300px; border:white; border-radius:10px; background:darkorange;" value="continue"><br>
			<input class="needHelp" type="button" style="text-decoration:underline; background:#0000; border:0; float:right; color: cornflowerblue; cursor:pointer;" value="Need Help?"> 
			</div>
			</div>
	</form>
	<div id="Wrapper"></div>
	
</body>
</html>