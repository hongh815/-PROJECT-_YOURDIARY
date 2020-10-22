<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet"type="text/css" href="${pageContext.request.contextPath }/in/style.css"> 
</head>
<body>
<div>
	<h1 class="text">yourdiary.</h1>

	<div class="container">
		<div class="login-form">
				<h1>Sign in.</h1>
			<form name="f" action="${pageContext.request.contextPath}/SigninController" method="post">
					<input type="text" name="id" placeholder="ID">
					<input type="password" name="pwd" placeholder="Password">  
					<input type="submit" value="Login">
			</form>
			<a href="manager_in.jsp">관리자로 로그인</a><hr>
			<a href="${pageContext.request.contextPath }/sign_up/sign_up.jsp">Creating an account.</a><br>
			<a href="forgetPassword.jsp">Forget Password.</a><hr>
			<a href="${pageContext.request.contextPath }/in/in.jsp">home.</a>
		</div>
	</div>

	<div class="clouds">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud1.png" style="--i:1;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud2.png" style="--i:2;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud3.png" style="--i:3;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud4.png" style="--i:4;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud5.png" style="--i:5;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud1.png" style="--i:10;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud2.png" style="--i:9;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud3.png" style="--i:8;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud4.png" style="--i:7;">
		<img src="${pageContext.request.contextPath }/img/cloud/cloud5.png" style="--i:6;">	
	</div>
</body>
</html>