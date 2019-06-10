<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
nav {
	text-align : center;
	
}
nav form ul li {
	display: inline;
	
	padding: 0 40px;
}
#Wrapper { 
	position:absolute; 
	z-index:9; 
	background-color:#000;
	display:none; 
	left:0; 
	top:0; 
} 


</style>
<script>

	$(function() {
		
		function wrapWindowMask(){
			var maskheight = $(document).height();
			var maskwidth = $(document).width();
			
			$('#Wrapper').css({
				'width':maskwidth,'height':maskheight
			});
			$('#Wrapper').fadeTo("slow",0.8); 
		}
		/* 클릭 시 누른 버튼 클래스와 노드 알림 */
		/* $("body").click(function(event) {
			alert("clicked class : " + event.target.className +"/ clicked Node :"+event.target.nodeName + "// e.target : " + $('.popupForm').has(event.target).length);
			//node name을 알고 싶다면
			//alert("clicked:"+event.target.nodeName);
		}); */
		/* signIn popup 닫기 */
		$(document).mouseup(
				function(e) {
					//팝업아이디
					var container1 = $('.popup');
					var container2 = $('.popupForm');
					
					if (!container2.is(e.target) && container2.has(e.target).length === 0) {
						container1.css("display", "none");
					}
				});
		
		
		$('#submit').click(function(){
			$.ajax({
				type : "POST",
				url : "/signIn",
				data : {"email" : email,"password" : password},
				success : function(result){
					if(result == "OK"){
						alert("result : " + result);
						location.href='/main.jsp';
						console.log("석세스");
					}
					else if(result == "NO"){
						alret("뭐지 ");
						alert("result : " + result);
						console.log("엘스이프");
					}
					else {
						alret("C8");
						alert("result : " + result);
						console.log("엘스");
					}
				}
			}); //end ajax
		});
		/* upload popup 열기 */
		$('#ajax3').click(function() {

			$.ajax({
				type : "POST",
				url : "/upload",
				success : function(data) {
					$('.popup').html(data); //넘어온 데이터는 html 상태이기에 display:none으로 해두었던 div를 show시켜주고, 그 뒤에 ajax로 가지고온 data를 넣어준다
					$('.popup').css("display", "block");
					
					//함수실행
					wrapWindowMask();
					alert("ajax 성공");
				}, //end success
				error : function(xhr, status) {
					alert(xhr + ":" + status);
				}
		
			});//end ajax
			

		});
		
	});
	
	var email = <%= request.getParameter("email") %>
</script>

</head>

<body>
	<nav>
	<form action="/Search" method="GET">
	<ul>
		<li id="main" ><a href="/"
			style="text-decoration: none; color: white;">Sound</a></li>
		<li id="chart" ><a href="Chart"
			style="text-decoration: none; color: white;">Chart</a></li>
			
		<li><input name="search" type="search"
			style="outline: none; border: 0; width: 480px;" /></li>
		<li>
			
			<input type="image"
				src="<c:url value="/resources/img/Text_Button2.png" />" align="absmiddle"  width="250" style="border: 0; background-color: white; margin-left: -85px; position: absolute; inline-size: 21px; line-height: 15px; margin-top: 8px; outline: none;" /></li>
	
		<li id="ajax3"><button
			 style="margin-left: -120px; border:0; outlign:0; background-color: orange; text-decoration: none; font-color: white; padding: 6px; color: white;">UPLOAD</button></li>
		<li id="ajax">${email} - Welcome to join us.</li>
		
	</ul>
	</form>
	</nav>
	<!-- 레이어 팝업 -->
	<div class="popup" style="display: none;"><div id="Wrapper"></div></div>

</body>
</html>