<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="style.css">
  <title>Layered Card Hover</title>
</head>
<body>
<h1>Your mood.</h1>
<jsp:include page="../../example/mainmenu/mainmenu.jsp"/>
	<div class="clouds">
		<img class="cloudimg" src="bluecloud1.png" style="--i:1;">
		<img class="cloudimg" src="bluecloud2.png" style="--i:2;">
		<img class="cloudimg" src="bluecloud3.png" style="--i:3;">
		<img class="cloudimg" src="bluecloud4.png" style="--i:4;">
		<img class="cloudimg" src="bluecloud5.png" style="--i:5;">
		<img class="cloudimg" src="bluecloud1.png" style="--i:10;">
		<img class="cloudimg" src="bluecloud2.png" style="--i:9;">
		<img class="cloudimg" src="bluecloud3.png" style="--i:8;">
		<img class="cloudimg" src="bluecloud4.png" style="--i:7;">
		<img class="cloudimg" src="bluecloud5.png" style="--i:6;">	
	</div>




  <div class="box">
      <div class="card">
        <div class="imgBx">
        
        <div class="bodyghost" style="background-color: #f1f1f1;">
      <div class="ghost" style="  background-color: #74b9ff;">
	    <a href="${pageContext.request.contextPath }/live/live.jsp"></a>
      
    <div class="face">
      <div class="eyes" >
        <span></span><span></span>
      </div>
      <div class="mouth"></div>
    </div>

    <div class="hands">
      <span style="background-color: #74b9ff;"></span>
      <span style="background-color: #74b9ff;"></span>
    </div>

    <div class="feet">
      <span style="background-color: #74b9ff;"></span>
      <span style="background-color: #74b9ff;"></span>
      <span style="background-color: #74b9ff;"></span>
      <span style="background-color: #74b9ff;"></span>
    </div>
  </div>
       </div>
        </div>
        <div class="details">
            <h2>good</h2>
        </div>
      </div>
    
    
    
    
    


       <div class="card">
         <div class="imgBx">

        <div class="bodyghost" style="background-color: #f1f1f1;">
      <div class="ghost" style="  background-color: #fdcb6e;">
      	<a href="${pageContext.request.contextPath }/live/liveSoso.jsp"></a>
    <div class="face">
      <div class="eyes">
        <span style="height: 25px; width: 15px;"></span><span style="height: 25px; width: 15px;"></span>
      </div>
      <div class="mouth" style="border-radius: 35px 35px 35px 35px; width: 15px;"></div>
    </div>
    <div class="hands">
      <span style="background-color: #fdcb6e;"></span>
      <span style="background-color: #fdcb6e;"></span>
    </div>

    <div class="feet">
      <span style="background-color: #fdcb6e;"></span>
      <span style="background-color: #fdcb6e;"></span>
      <span style="background-color: #fdcb6e;"></span>
      <span style="background-color: #fdcb6e;"></span>
    </div>
  </div>
       </div>


         </div>
         <div class="details">
            <h2>soso</h2>
          </div>
       </div>
 
 
 
 
     
       <div class="card">
         <div class="imgBx">
 
        <div class="bodyghost" style="background-color: #f1f1f1;">
      <div class="ghost" style="  background-color: #ff7675;">
      	<a href="${pageContext.request.contextPath }/live/liveBad.jsp"></a>
    <div class="face">
      <div class="eyes" >
        <span style="height: 5px"></span><span style="height: 5px"></span>
      </div>
      <div class="mouth" style="border-radius: 25px 25px 10px 10px;"></div>
    </div>

    <div class="hands">
      <span style="background-color: #ff7675;"></span>
      <span style="background-color: #ff7675;"></span>
    </div>

    <div class="feet">
      <span style="background-color: #ff7675;"></span>
      <span style="background-color: #ff7675;"></span>
      <span style="background-color: #ff7675;"></span>
      <span style="background-color: #ff7675;"></span>
    </div>
  </div>
       </div>

 
         </div>
         <div class="details">
            <h2>bad</h2>
          </div>
       </div>


 
  </div>
</body>
</html>