<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="<c:url value='/css/index.css'/>" type="text/css">
		<link rel="stylesheet" href="<c:url value='/css/admin.css'/>" type="text/css">
	</head>
	<body>
		<div id="wrapper">
		<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='ture'></jsp:include>
		
	
	<div id="adminWrap">
			<h1>관리자 메뉴</h1>
	
		<div id="adminMenuBox">
			<div class="adminItem"><a href="<c:url value='/admin/listAllMember'/>" class="memberList">멤버 관리</a></div>
					
			<div class="adminItem"><a href="<c:url value='/admin/listAllMovie'/>" class="movieList">영화 관리</a></div>
			
			<div class="adminItem"><a href="<c:url value='/admin/listAllBoard'/>" class="boardList">게시판 관리</a></div>
			
		</div>
	
	</div>
	
		
		<!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='ture'></jsp:include>
		</div>
	</body>
</html>