<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>

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
<body>
	<form  class="popupForm" action="/uploadCheck" method="POST" style="display: block;">
		<div class="popupHeader">
			<label for="image_uploads">Choose images to upload (mp3)</label>
			<input type="file" id="image_uploads" name="image_uploads"
				accept=".jpg, .jpeg, .png, .mp3" multiple>
		</div>
		<div class="popupContent">
		No files currently selected for upload
		<button>Submit</button>
		</div>
		
	</form>
	<div id="Wrapper"></div>
	
</body>
</html>