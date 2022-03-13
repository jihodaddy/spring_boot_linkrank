<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="<c:url value='/css/login.css'/>" type="text/css">
    <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value='/js/loginCheckForm.js'/>"></script>
    <script src="<c:url value='/js/login.js'/>"></script>
</head>
<body>
    <div id="wrapper">
      
      <!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='ture'></jsp:include>
		
          
        <section>
            <div class="loginBox">
                    <div>
                        <div class="box">
                           	<div><h1>로그인</h1></div>
                           	<form id="loginForm" name="loginForm">
                               	<div id="idBox"><input type="text" name="id" id="id" placeholder="아이디"></div>
                               	<div id="pwBox"><input type="password" name="pwd" id="pwd" placeholder="비밀번호"></div>
                               		<button type="submit" id="loginButton">로그인</button>
                           	</form>
                       	</div> 
                        <div class="box">
                           	<div class="socialLoginBox">
                           		<h1>소셜 로그인</h1>
                                <ul class="socialLoginList">
                                    <li><button class="kakaoLoginButton"><span>KakaoTalk ID 로그인</span></button></li>
                                    <li><button class="googleLoginButton"><span>Google ID 로그인</span></button></li>  
                                    <li><button class="naverLoginButton"><span>Naver ID 로그인</span></button></li>  
                                </ul>
                               	<p class="forgetMsg"><a href="#">아이디/비밀번호 찾기</a>  |   <a href="join.html">회원가입</a></p>
                           	</div>
                        </div><!-- box  -->
                    </div>
                </div> <!-- loginBox  -->
            </section>
       
        <!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='ture'></jsp:include>
       
    </div>
</body>
</html>