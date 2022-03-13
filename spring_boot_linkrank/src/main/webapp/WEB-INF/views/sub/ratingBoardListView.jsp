<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="<c:url value='/css/ratingBoardListView.css'/>" type="text/css">
	</head>
	<body>
	<div id="wrapper">
		<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='ture'></jsp:include>
		
		<section>
			<div id="ratingWrap">
			<h3>평점 게시판</h3>
			
			<table class="ratingBoard">
				
				<tr><th>no.</th><th>영화</th><th>제목</th><th>ID</th><th>평점</th></tr>
				
				<c:forEach items="${boardList}" var="b">
					<tr><td>${b.boardNo}</td>
							<td>${b.movieName}</td>
							<td><a href="<c:url value='/sub/detailViewRating/${b.boardNo }'/>">${b.boardTitle}</a></td>
							<td>${b.memId}</td>
							<td>${b.boardRating}</td></tr>
				
				</c:forEach>
			
			</table>
			</div>
		</section>
		<!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='ture'></jsp:include>
	</div>
	</body>
</html>