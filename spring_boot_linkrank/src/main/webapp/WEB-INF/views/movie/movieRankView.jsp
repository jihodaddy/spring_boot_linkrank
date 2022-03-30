<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		   	<link rel="stylesheet" href="<c:url value='/css/movieSearchView.css'/>" type="text/css">
	</head>
	<body>
	<div id="wrapper">
		<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='ture'></jsp:include>

			<section>
			<h3>넷플릭스 영화 순위</h3><hr/>
			
			<div id="searchResultBox">
								
			<div class="movieItemList">
				<c:forEach items="${movieList }" var="m" varStatus="status">
				
				<!-- 무비카드 -->
				<div>
					<span font-size="small">${status.index + 1}위</span>
					<div class="movieItem">
						<a href="${m.link }">
						  <div class="imagebox">					 
						   	<img src="${m.image }"  class="movieImg" alt="영화이미지" onerror="this.src='/image/noimage.png';" />
						  </div>
							<div class="contentsbox">
								<div class="title">
									${m.movieName }
								</div>
								<div class="pubDate">
									개봉년도: ${m.pubDate }
								</div>
								<div class="rating">
									평점: ${m.userRating }
								</div>
							</div>			  
						</a>
					</div>
				</div>
				<!-- 무비카드  -->
			
				
						
				</c:forEach>
				</div>
			</div>
			</section>

		<!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='ture'></jsp:include>
	</div>
	</body>
</html>