<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>크롤링 테스트</title>
	</head>
	<body>
	<div id="wrapper">
		<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='ture'></jsp:include>

		 <div class="craw">
		     <input type="button" id="craw_submit" name="craw_submit" class="btn btn-warning" value="조회"/>  
		 </div>
		 <div class="content_craw">
		 </div>
			

		<!-- BOTTOM  -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='ture'></jsp:include>
	</div>
	<script type="text/javascript">
	     $("#craw_submit").click(function(){
	         $.ajax({
	             url :"/craw/craw_select.ajax",
	             /* data :{
	                 user_id : $("#craw_id").val(),
	             }, */
	             dataType : "json",
	             type : "post",
	             success:function(data){
	                console.log(data.NameResult);
	                console.log(data.PlayedResult);
	                     $(".content_craw").append("<tr><th>"+data.NameResult+"</th><th>"+data.PlayedResult+"</th></tr>");    
	                 
	             }
	         })
	     })
	 </script>
	
	</body>
	
</html>