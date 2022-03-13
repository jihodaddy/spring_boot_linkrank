<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	</head>
	<body>
		<div id="wrapper">
		<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='ture'></jsp:include>
		
		<section>
			
			<div id="adminBoard">
				<h3>평점 게시판</h3>
			<table class="table">
				<tr><th>no.</th>
						<th>영화</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>ID</th>
						<th>평점</th>
						<th>삭제</th>
				</tr>
				
				<c:forEach items="${boardList}" var="b">
					<tr><td>${b.boardNo}</td>
							<td>${b.movieNo}</td>
							<td><a href="<c:url value='/sub/detailViewRating/${b.boardNo }'/>">${b.boardTitle}</a></td>
							<td>${b.boardWriter }</td>
							<td>${b.memId}</td>
							<td>${b.boardRating}</td>
							<td>	<a href="javascript:deleteCheck();">삭제</a>
									<script type="text/javascript">
										function deleteCheck(){
											var answer = confirm("선택한 게시글을 삭제하시겠습니까?");
											if(answer == true){
												location.href="<c:url value='/admin/deleteBoard/${b.boardNo}' />";
											}
										}
									</script>
				   			</td>
			   			</tr>
				</c:forEach>
			</table>
			<div >
				<a href="<c:url value='/admin/adminMain'/>">관리자</a>
				<a href="<c:url value='/' />">메인 화면으로 이동</a> 
				</div>
				
			
			</div>
		</section>
		<!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='ture'></jsp:include>
	</div>
	</body>
</html>