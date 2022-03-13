<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>영화 리스트</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	</head>
	<body>
	<div id="wrapper">
		<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='ture'></jsp:include>

			<section>
				<div class="adminTop">
					<a href="<c:url value='/admin/movie/insertMovieForm'/>">영화 등록</a>
					<a href="<c:url value='/admin/listAllMovie'/>">영화 목록</a>
				</div>
			<div id="adminMovie">
				<h3>전체 영화 조회</h3>
			<table class="table" >
				<tr><th>이미지</th>
						<th>영화번호</th>
						<th>영화이름</th>
						<th>영화감독</th>
						<th>영화배우</th>
						<th>삭제</th>
				</tr>
			
			   <c:forEach items="${movieList }" var="mv">
			   	<tr><td><img src="<c:url value='/image/rating/${mv.movieImg }'/>" width="50" height="30"></td>
			   			<td><a href="<c:url value='/movie/updateMovieForm/${mv.movieNo}'/>">${mv.movieNo}</a></td>
			   			<td>${mv.movieName}</td>
			   			<td>${mv.movieDirector }</td>
			   			<td>${mv.movieActor}"</td>
			   			<td>
			   					<a href="javascript:deleteCheck();">삭제</a><br><br>
								<script type="text/javascript">
									function deleteCheck(){
										var answer = confirm("선택한 영화를 삭제하시겠습니까?");
										if(answer == true){
											location.href="<c:url value='/movie/deleteMovie/${mv.movieNo}' />";
										}
									}
								</script>
			   			</td>
			   	</tr>
			   </c:forEach>
			</table><br><br>
			
			</div>
			</section>

		<!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='ture'></jsp:include>
	</div>
	</body>
</html>