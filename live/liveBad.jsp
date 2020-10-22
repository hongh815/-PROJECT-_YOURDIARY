<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
<link rel="stylesheet" href="style.css">
<script type="text/javascript">
function a() {
	var home = confirm("홈으로 이동하시겠습니까?");
	if(home) {
		location.href='${pageContext.request.contextPath }/in/loginComplete.jsp';		
	} else return false;
}

function live() {
	var flag = confirm("일기를 등록하시겠습니까?");
	if(flag) {		
		f.submit();	
	} else alert("등록이 취소되었습니다.");
}
</script>
</head>
<body style="background: #ff7675;">
<jsp:include page="../example/mainmenu/mainmenu.jsp"/>
<form name="f" action="${pageContext.request.contextPath}/LiveController" method="post" enctype = "multipart/form-data">
	<div class="live-form" style="background: #f1f1f1;">
		<h1>
		<input type="text" name="title" value="" placeholder="Enter your Title" style="color: #3f4f64">
		</h1>
		<div class="txtb">
			<input type="hidden" name="id" value="${sessionScope.id }">
		</div>
		<div class="txtb">
			<textarea rows="10" cols="" name="content" placeholder="Enter your Content" style="color: #7f8c8d;"></textarea>
		</div><hr>
		Share
		<select name="type">
			<option value="0">ALL</option>
			<option value="1">FOLLWER</option>
		</select>
		<input type="file"  name="file" value="이미지업로드" class="btn">
			
		
	</div>
	 <div class="ghost" style="background-color: #fff; top: 10%; left: 5%;">
		<span class="weraction" onclick="weractionToggle()">
		<span>MENU</span>
		<ul>
			<li><input type="reset" value="Clear" class="btn"></li>
			<li><input type="button"  onclick="a()" value="home" class="btn"></li>
			<li><input type="button" onclick="live()" value="done" class="btn" ></li>
		</ul>
		</span>
    	<div class="face">
      	<div class="eyes" >
        	<span style="height: 5px"></span><span style="height: 5px"></span>
      	</div>
      	<div class="mouth" style="border-radius: 25px 25px 10px 10px;"></div>
    	</div>

    	<div class="hands">
      		<span style="background-color: #fff;"></span>
      		<span style="background-color: #fff;"></span>
    	</div>

    	<div class="feet">
	      <span style="background-color: #fff;"></span>
	      <span style="background-color: #fff;"></span>
	      <span style="background-color: #fff;"></span>
	      <span style="background-color: #fff;"></span>
    	</div>
  </div>
  
  	<div class="clouds">
		<img src="${pageContext.request.contextPath }/img/cloud2/cloud1.png" style="--i:1;">
		<img src="${pageContext.request.contextPath }/img/cloud2/cloud2.png" style="--i:2;">
		<img src="${pageContext.request.contextPath }/img/cloud2/cloud3.png" style="--i:3;">
		<img src="${pageContext.request.contextPath }/img/cloud2/cloud4.png" style="--i:4;">
		<img src="${pageContext.request.contextPath }/img/cloud2/cloud5.png" style="--i:5;">
		<img src="${pageContext.request.contextPath }/img/cloud2/cloud1.png" style="--i:10;">
		<img src="${pageContext.request.contextPath }/img/cloud2/cloud2.png" style="--i:9;">
		<img src="${pageContext.request.contextPath }/img/cloud2/cloud3.png" style="--i:8;">
		<img src="${pageContext.request.contextPath }/img/cloud2/cloud4.png" style="--i:7;">
		<img src="${pageContext.request.contextPath }/img/cloud2/cloud5.png" style="--i:6;">	
	</div>
  
  
  
	<script type="text/javascript">
	var flag = false;
	var werflag = false;
	function weractionToggle() {
		werflag = true;
		if(werflag==true) {
			var weraction = document.querySelector('.weraction');
			weraction.classList.toggle('weractive');
			flag=false;			
		}
		return werflag;
	}
	
	</script>
	
	
</form>

</body>
</html>