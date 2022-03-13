<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>bottom</title>
		
	</head>
	<body>
		 <footer>
            <div id="footerBox">
                <div id="socialBox">
                    <span class="social"><a href="#"><img src="<c:url value='/image/icon/facebookIcon.png'/>" alt="facebook"></a></span>
                    <span class="social"><a href="#"><img src="<c:url value='/image/icon/instagramIcon.png'/>" alt="instagram"></a></span>
                    <span class="social"><a href="#"><img src="<c:url value='/image/icon/twitchIcon.png'/>" alt="twitch"></a></span>
                    <span class="social"><a href="#"><img src="<c:url value='/image/icon/twitterIcon.png'/>" alt="twitter"></a></span>
                </div>
                <div id="bottomMenuBox">
                    <ul id="bottomMenuItem">
                        <li><a href="#">회사소개</a></li>
                        <li><a href="#">이용약관</a></li>
                        <li><a href="#">개인정보 처리방침</a></li>
                        <li><a href="#">전자금융거래약관</a></li>
                        <li><a href="#">보안센터</a></li>
                        <li><a href="#">채용정보</a></li>
                    </ul>
                </div>
                <div id="companyInfo">
                    <p>상호명: 땡땡땡회사</p><br>
                    <p>주소: 서울시 역삼동 무슨빌딩 9층</p><br>
                    <p>대표이사: 김대표</p><br>
                    <p>사업자 등록번호: 123-45678-9</p><br>
                </div>
                <div id="moveTopBox"></div>
            </div>
        </footer>
	</body>
</html>