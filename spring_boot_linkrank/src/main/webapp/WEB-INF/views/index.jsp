<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index</title>	
	</head>
	<body>
		<div id="wrapper">
		
	<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='ture'></jsp:include>
		

        <section id="sectionBox">
            <h2>넷플릭스 영화 순위</h2>
            <div id="rankSlideShow">
                <div class="prevNextButtonBox">
                    <img class="moviePrevButton" src="image/icon/prev.png">						
                    <img class="movieNextButton" src="image/icon/next.png">						
                </div>
                <div class="movieRank">
                    <div id="movieSlidePanel">
                    	<c:forEach items="${movieRank}" var="rank" >
                    		<a href="${rank.link }"><img src="${rank.image }" alt="${rank.movieName }" class="movieSlideImg"></a>
                    	
                    	
                    	</c:forEach>
                    <!--     <a href="#"><img src="image/rank/movierank1.jpg" alt="영화순위1" class="movieSlideImg"></a>
                        <a href="#"><img src="image/rank/movierank2.jpg" alt="영화순위2" class="movieSlideImg"></a>
                        <a href="#"><img src="image/rank/movierank3.jpg" alt="영화순위3" class="movieSlideImg"></a>
                        <a href="#"><img src="image/rank/movierank4.jpg" alt="영화순위4" class="movieSlideImg"></a>
                        <a href="#"><img src="image/rank/movierank5.jpg" alt="영화순위5" class="movieSlideImg"></a>
                        <a href="#"><img src="image/rank/movierank6.jpg" alt="영화순위6" class="movieSlideImg"></a>
                        <a href="#"><img src="image/rank/movierank7.jpg" alt="영화순위7" class="movieSlideImg"></a>
                        <a href="#"><img src="image/rank/movierank8.jpg" alt="영화순위8" class="movieSlideImg"></a>
                        <a href="#"><img src="image/rank/movierank9.jpg" alt="영화순위9" class="movieSlideImg"></a>
                        <a href="#"><img src="image/rank/movierank10.jpg" alt="영화순위10" class="movieSlideImg"></a> -->
                    </div>
                </div>
                <h2>넷플릭스 시리즈 순위</h2>
                <div class="prevNextButtonBox">
                    <img class="seriesPrevButton" src="image/icon/prev.png">						
                    <img class="seriesNextButton" src="image/icon/next.png">						
                </div>
                <div class="seriesRank">
                    <div id="seriesSlidePanel">
                        <a href="#"><img src="image/rank/seriesrank1.jpg" alt="시리즈순위1" class="seriesSlideImg"></a>
                        <a href="#"><img src="image/rank/seriesrank2.jpg" alt="시리즈순위2" class="seriesSlideImg"></a>
                        <a href="#"><img src="image/rank/seriesrank3.jpg" alt="시리즈순위3" class="seriesSlideImg"></a>
                        <a href="#"><img src="image/rank/seriesrank4.jpg" alt="시리즈순위4" class="seriesSlideImg"></a>
                        <a href="#"><img src="image/rank/seriesrank5.jpg" alt="시리즈순위5" class="seriesSlideImg"></a>
                        <a href="#"><img src="image/rank/seriesrank6.jpg" alt="시리즈순위6" class="seriesSlideImg"></a>
                        <a href="#"><img src="image/rank/seriesrank7.jpg" alt="시리즈순위7" class="seriesSlideImg"></a>
                        <a href="#"><img src="image/rank/seriesrank8.jpg" alt="시리즈순위8" class="seriesSlideImg"></a>
                        <a href="#"><img src="image/rank/seriesrank9.jpg" alt="시리즈순위9" class="seriesSlideImg"></a>
                        <a href="#"><img src="image/rank/seriesrank10.jpg" alt="시리즈순위10" class="seriesSlideImg"></a>
                    </div>
                </div>
            </div>
            
            <div id="bottomSectionBox">
            <h2>평점 추천</h2>
            <div id="movieRatingBox">
            	<c:forEach items="${movieList}" var="mv" >
            
			    <div class="movieRatingItem">
			          <a href="<c:url value='/movie/detailViewMovie/${mv.movieNo}'/>">
				        <img src="<c:url value='/image/rating/${mv.movieImg }'/>">
				      </a>
			         <div class="desc">
			               <div><h3>${mv.movieName }</h3></div>
			               <div>${mv.movieDirector }</div>
			               <div>${mv.movieActor}</div>
			            </div>
	        	</div>
			    
			    </c:forEach>
            </div>
         </div>
         
         
            
        </section>
  
  <!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='ture'></jsp:include>
  
    </div>
</body>
</html>