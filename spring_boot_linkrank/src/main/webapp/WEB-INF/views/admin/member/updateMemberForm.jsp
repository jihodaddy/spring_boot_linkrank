<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 정보 수정</title>
	<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>	
	<script src="<c:url value='/js/searchZip.js'/>"></script>
	</head>
	<body>
	<div id="wrapper">
		<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='ture'></jsp:include>

			<section>
					
					<div id="updateMember">
					
						  <h2>회원 정보 수정</h2>
                <hr>
                <form name="updateMember" id="updateMember" method="post" action="<c:url value='/admin/updateMember'/>">
                    <table> 
                        <tr>
                            <th>아이디</th>
                            <td id="idBox">
                                <input type="text" name="memId" id="id" value="${mem.memId}" readonly>    
                            </td>
                        </tr>
                        <tr>
                            <th>비밀번호</th>
                            <td id="pwBox">
                                <input type="password" name="memPwd" id="password" value="${mem.memPwd}">
                            </td>
                        </tr>
                 		<tr>
                            <th>이름</th>
                            <td id="nameBox">
                                <input type="text" name="memName" id="name" value="${mem.memName}">    
                            </td>
                        </tr>
                        <tr>
                            <th>이메일</th>
                            <td id="emailBox">
                                <input type="text" name="memEmail" id="email" value="${mem.memEmail}">
                            </td>
                        </tr>
                          <tr>
                            <th>휴대폰번호</th>
                            <td id="hpBox">
                                <input type="text" id="memHp1" name="memHp1" size="3" value="${mem.memHp1}"> 
			                    - <input type="text" id="memHp2" name="memHp2" size="4" value="${mem.memHp2}">
			                    - <input type="text" id="memHp3" name="memHp3" size="4" value="${mem.memHp3}"> 
                            </td>
                        </tr>
                       	<tr>
                       		<th>주소</th>
							<td id=addressBox>
								<input type="text" id="zipcode" name="memZipcode" value="${mem.memZipcode}"> &nbsp;
								<input type="button" id="searchZip" name="searchZip" value="우편번호찾기" readonly><br>
								<input type="text"  id="address1"  name="memAddress1" size="70" value="${mem.memAddress1}" readonly><br> 
								<input type="text" id="address2"  name="memAddress2" size="70" value="${mem.memAddress2}">
							</td>
						</tr>
						<tr>	
							<td colspan="2"><input type="submit" value="수정"><input type="reset" value="취소"></td>
						</tr>
                      </table>
					</form>
					<a href="javascript:deleteCheck();">삭제</a>
								<script type="text/javascript">
									function deleteCheck(){
										var answer = confirm("선택한 회원을 삭제하시겠습니까?");
										if(answer == true){
											location.href="<c:url value='/member/deleteMember/${mem.memId}' />";
										}
									}
								</script>
					<br>
				<a href="<c:url value='/' />">메인 화면으로 이동</a>
					<br>
			
					</div>
						
			</section>

		<!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='ture'></jsp:include>
	</div>
	</body>
</html>