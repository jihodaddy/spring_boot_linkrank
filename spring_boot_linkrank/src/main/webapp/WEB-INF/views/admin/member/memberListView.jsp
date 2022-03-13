<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체 회원 조회</title>
		<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	</head>
	<body>
		<div id=wrapper>
		<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='ture'></jsp:include>
		
			<section>
			
				<div id="adminMember">
					<h3>전체 회원 조회</h3>
				<table class="table" >
					<tr><th>회원ID</th>
							<th>비밀번호</th>
							<th>이름</th>
							<th>이메일</th>
							<th>가입일</th>
							<th>핸드폰번호</th>
							<th>우편번호</th>
							<th>주소</th>
							<th>삭제</th>
							
							</tr>
				
				   <c:forEach items="${memList }" var="mem">
				   	<tr><td><a href="<c:url value='/member/updateMemberForm/${mem.memId}'/>">${mem.memId}</a></td>
				   			<td>${mem.memPwd}</td>
				   			<td>${mem.memName}</td>
				   			<td>${mem.memEmail }</td>
				   			<td><fmt:formatDate value="${mem.memJoinDate}" dateStyle="medium"/></td>
				   			<td>${mem.memHp1} ${mem.memHp2} ${mem.memHp3}</td>
				   			<td>${mem.memZipcode }</td>
				   			<td>${mem.memAddress1} ${mem.memAddress1}</td>
				   			<td>
				   					<a href="javascript:deleteCheck();">삭제</a><br><br>
									<script type="text/javascript">
										function deleteCheck(){
											var answer = confirm("선택한 회원을 삭제하시겠습니까?");
											if(answer == true){
												location.href="<c:url value='/member/deleteMember/${mem.memId}' />";
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