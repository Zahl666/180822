<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
nav {
	text-align : center;
	
}
nav ul li {
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
.table tr:hover {
	background : lightgrey;
}
</style>
<script type="text/javascript">
$(function(){
	
	function wrapWindowMask(){
		var maskheight = $(document).height();
		var maskwidth = $(document).width();
		
		$('#Wrapper').css({
			'width':maskwidth,'height':maskheight
		});
		$('#Wrapper').fadeTo("slow",0.8); 
	}
	
	$('.table tr').click(function() {
		var tr = $(this);
		var td = tr.children();
		
		
		console.log(td.eq(3).text());
		$.ajax({
			type : "GET",
			url : "/play",
			async : false,
			data : td,
			success : function(data) {
				$('.popup').html(data); //넘어온 데이터는 html 상태이기에 display:none으로 해두었던 div를 show시켜주고, 그 뒤에 ajax로 가지고온 data를 넣어준다
				$('.popup').css("display", "block");
				$('.popupContent').html("<aud" + "io src="+td.eq(3).text()+" controls='' preload='auto' </aud" + "io>");
				
			
				
				//함수실행
				wrapWindowMask();
				
			}, //end success
			error : function(xhr, status) {
				alert(xhr + ":" + status);
			}
	
		});//end ajax
		

	});
	
	


});



var title = <%=request.getParameter("title")%>
</script>
<body>
<div style="width:1980px; height : 100%; background: white;">
	<div class="contentHeader"
		style="width: 1200px; height: 100%; margin-left: 460px; background: white; ">
		<h1>Search Result for "${title }"</h1>
		<div
			style="width: 1000px; height: 700px; background: white; margin-left: 100px;">
			<table class="table"table-bordered" >
				<tr style="line-height:3.5em;" >
					<th style="width: 10px">NUMBER</th>
					<th>TITLE</th>
					<th>Artist</th>
					<th>Path</th>
				</tr>
				<c:forEach items="${list}" var="Mp3VO">
					<tr style="text-align:center; line-height:2em;">
						<td ><a href='/Search?search=${Mp3VO.bno}'> ${Mp3VO.bno}</a></td>
						<td>${Mp3VO.title }</td>
						<td>${Mp3VO.artist }</td>
						<td><input type="hidden" value="${Mp3VO.path }"> ${Mp3VO.path }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	</div>
</body>
</html>