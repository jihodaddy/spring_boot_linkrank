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

				<table class=big>
		<colgroup>
			<col width="50%">
			<col width="50%">
		</colgroup>
		<tr class="title">
			<th colspan="3">영화 실시간 뉴스</th>
		</tr>
		<thead>
		<tbody>
			<tr>
				<td>
					<table class="seongbukNews1">
						<colgroup>
							<col width="10%">
							<col width="90%">
						</colgroup>
						<c:forEach var="url" items="${urls}" varStatus="status" begin="3"
							end="13">
							<c:if test="${titles[status.index]!=''}">
								<tr>
									<td>${ status.index-2}</td>
									<td><a href="${url}">${titles[status.index]}</a></td>
								</tr>
							</c:if>
						</c:forEach>
					</table>
				</td>
				<td>
					<table class="seongbukNews2">
						<colgroup>
							<col width="10%">
							<col width="90%">
						</colgroup>
						<c:forEach var="url" items="${urls}" varStatus="status" begin="14"
							end="${titles.size()}">
							<c:if test="${titles[status.index]!=''}">
								<tr>
									<td>${ status.index-2}</td>
									<td><a href="${url}">${titles[status.index]}</a></td>
								</tr>
							</c:if>
						</c:forEach>
					</table>
				</td>
			</tr>
		</tbody>
	</table>

		<!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='ture'></jsp:include>
	</div>
	</body>
</html>