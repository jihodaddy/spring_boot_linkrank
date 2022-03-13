/**
 * comment.js
 */
 
 
 
/* //코멘트 리스트 불러오는거(상품검색폼 응용)
function detailMovieBoard()	{
		$.ajax({
			url: "/sub/detailViewRating",
			type: "get",
			data: {'movieNo':movieNo},
			success:function(result){
				$('#commentListBox').empty();
				$('#commentListBox').append('<table id="detailMovieBoard">')
				
				if(result == ""){
					$('#detailMovieBoard').append('<tr align="center"><td colspan="3">등록된 평점이 없습니다 </td></tr>');
				
				}else{
					for(var i=0; i<result.length; i++){
				$('#commentListBox').append('<tr><td rowspan="3">'+ result[i].boardRating +'</td><td class="bTitle">'+ result[i].boardTitle+'</td></tr>' +
																'<tr><td class="bCont">'+result[i].boardContent+'</td></tr>'+
																					'<tr class="bWr"><td >'+result[i].boardWriter+'('+result[i].memId+')'+'</td></tr>'
																)
					}
				}
				$('#commentListBox').append('</table>')
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	};


 //문서화면 열리면 코멘트 리스트부터
 $(document).ready(function(){
		detailMovieBoard();
});*/
 
 
 //코멘트 등록 ajax
  //function writeBoard(commentData){
$(document).ready(function(){	
	$('#commentForm').on('submit', function(){
		event.preventDefault();
		
		var commentData = $("#commentForm").serialize();
		// serialize() : 폼에 입력한 값을 쿼리 스트링 방식의 데이터로 변환
		
    	$.ajax({
	        type:'post',
	        url : "/sub/writeBoard",
	        data: commentData,
	        dataType:'text',
	        success : function(result){
	            if(result=="success")
	            {
				document.location.reload();
				alert("등록완료")
				
	            }
	        },
	        error:function(data, textStatus){
				alert("전송 실패! 로그인 상태 확인 바랍니다.");
				
				
	       }
	        
	    });
    });
});
    
  


