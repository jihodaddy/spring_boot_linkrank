z<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>영화 상세 화면</title>
		<link rel="stylesheet" href="<c:url value='/css/detailMovieView.css'/>" type="text/css">
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
    	<script src="<c:url value='/js/comment.js'/>"></script>
    	<script src="<c:url value='/js/rating.js'/>"></script>
	</head>
	<body>
	<div id="wrapper">
		<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='ture'></jsp:include>

			<section>
				<div id="detailBox">
				
					<div class="movieTrailer">
						<span>
							<img class="detailImg" src="<c:url value='/image/poster/${movie.movieImg}'/>">
						</span>
						<span>
							<iframe class="iframeTr" src="${movie.mifUrl}"></iframe>
						</span>
					</div>
					
					<div id="movieInfo">		
						<div class="info">
								<div>제목: ${movie.movieName}</div>
								<div>감독: ${movie.movieDirector}</div>
								<div>배우: ${movie.movieActor}</div>
							<div class="movieDesc">줄거리: ${movie.movieDesc}</div>	
						</div>
					
						<div id="ratingBox">
							<h2>코멘트 작성</h2>
								<form id="commentForm">
	                            <table class="cmtTable">
	                             	<tr><td>닉네임</td><td><input type="text" id="boardWriter" name="boardWriter"/></td>
	                             			<td>평점</td><td>
							                             			<span class="starRating">
																	  <label for="1-star" class="star">
																	  <input type="radio" id="1-star" name="boardRating" value="1" checked/>
																	  1☆</label>
																	  <label for="2-stars" class="star">
																	  <input type="radio" id="2-stars" name="boardRating" value="2" />
																	  2☆</label>
																	  <label for="3-stars" class="star">
																	  <input type="radio" id="3-stars" name="boardRating" value="3" />
																	  3☆</label>
																	  <label for="4-stars" class="star">
																	  <input type="radio" id="4-stars" name="boardRating" value="4" />
																	  4☆</label>
																	  <label for="5-stars" class="star">
																	  <input type="radio" id="5-stars" name="boardRating" value="5" />
																	  5☆</label>
																	</span>
	                             			
	                             			</td></tr>
									<tr><td>제목</td><td colspan="3"><input type="text" name="boardTitle" id="boardTitle"></td></tr>
									<tr><td colspan="4"><input type="textarea" name="boardContent" id="boardContent">
																	  <input type="submit" id="submit" value="보내기"></td></tr>
									 <c:if test="${empty sessionScope.sid }">
		                         	  	<input type="hidden" name="memId" value="${sessionScope.sid}"/> 
									  </c:if>
								  		<input type="hidden" name="movieNo" value="${movie.movieNo}"/>	
	                         	  </table>
		                       </form>
		                       
		                       <h4>한줄평</h4>
		                      <!-- <div id="commentListBox">
		                      </div>  ajax로 받아올때 사용예정-->
		                      
		                  	<table id="detailMovieBoard">
							<c:forEach items="${bList}" var="b">
							<tr><td rowspan="3" class="starRating">${b.boardRating}</td><td class="bTitle">${b.boardTitle}</td></tr>
																							<tr><td class="bCont">${b.boardContent}</td></tr>
																							<tr class="bWr"><td >${b.boardWriter}(${b.memId})</td></tr>
							</c:forEach>
							</table>
						</div>
					
				</div> <!-- movieInfo -->
				</div>
				
			</section>

		<!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='ture'></jsp:include>
	</div>
	</body>
</html>