<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글 상세보기</title>
		<link rel="stylesheet" href="<c:url value='/css/detailRatingBoardView.css'/>" type="text/css">
	</head>
	<body>
	<div id="wrapper">
		<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='ture'></jsp:include>
			
			<section>
				<div id="detailRatingWrap">
			<h3>게시글 상세보기</h3>
			
			<table class="ratingBoard">
				
				
				<tr><th>no.</th><td>${b.boardNo}</td></tr>
				<tr><th>영화</th><td>${b.movieName}</td></tr>
				<tr><th>제목</th><td>${b.boardTitle}</td></tr>
				<tr><th>ID</th><td>${b.memId}</td></tr>
				<tr><th>내용</th><td>${b.boardContent}</td></tr>
				<tr><th>평점</th><td>${b.boardRating}</td></tr>
				
							
			</table>
			</div>
			
			</section>
		<!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='ture'></jsp:include>
	</div>
	</body>
</html>