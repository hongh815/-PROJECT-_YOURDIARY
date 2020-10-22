<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	<div class="inscale">
		<input type="button" onclick="actionToggle()" value="dffffffffffffffff">
	</div>
	
	<script type="text/javascript">
	function actionToggle() {
		if(flag==true) {
			var action = document.querySelector('.action');
			action.classList.toggle('active');
		}
	}
	</script>
</body>
</html>