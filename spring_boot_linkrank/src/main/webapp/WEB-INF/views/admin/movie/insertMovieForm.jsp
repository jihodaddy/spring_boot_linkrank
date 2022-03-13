<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<div id="wrapper">
		<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='ture'></jsp:include>
	<section>
		<h2>영화 정보 등록</h2>
			<form id="movieImgUpload" method="post" action="<c:url value='/movieImgUpload'/>" enctype="multipart/form-data">
				이미지 업로드: <input type="file" id="uploadFile" name="uploadFile" ><input type="submit" value="업로드">
			</form>
		
		<form method="post" action="<c:url value='/movie/insertMovie'/>">
		<table>
			<tr><td>영화 번호</td><td><input type="text" name="movieNo"/></td>
					<td>장르 번호</td><td><input type="text" name="genreNo"/></td>
					<td>영화 이름</td><td><input type="text" name="movieName"/></td></tr>
			<tr><td>영화 감독</td><td><input type="text" name="movieDirector"/></td>
			<td>영화 배우</td><td><input type="text" name="movieActor"/></td></tr>
			<tr><td>줄거리</td><td><input type="textarea" name="movieDesc" /></td></tr>
			
			
			<input type="hidden" name="movieImg" value="${originalFileName}" />
			<tr><td colspan="4"> 
					<<input type="submit" id="submit" value="등록하기" />
			</td></tr>
		</table>	
		</form>
	
	</section>

		<!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='ture'></jsp:include>
	</div>
	</body>
</html>