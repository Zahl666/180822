<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sound Project</title>
<style>
	body {
		margin: 0%;
	}
	#Header {
		width : 100%;
		height : 30px;
		line-height : 30px;
		background-color : black;
		color : white;
		font-size : 10pt;
	}
	#Content {
		width : 100%;
		height : 850px;
	}
	/* #Footer {
		width : 100%;
		height : 30px;
		line-height : 30px;
		background-color : black;
		color : white;
		font-size : 10pt;
	} */
</style>
<script>
var email = ${email}
</script>
</head>
<body>
	<div id=wrap>
		<div id=Header>
			<jsp:include page="wrap/HeaderSignIn.jsp"></jsp:include>
		</div>
		<div id=Content>
			<jsp:include page="wrap/Content.jsp"></jsp:include>
		</div>
		<%-- <div id=Footer>
			<jsp:include page="wrap/Footer.jsp" ></jsp:include>	
		</div> --%>
	</div>
</body>
</html>