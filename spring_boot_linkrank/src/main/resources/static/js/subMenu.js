/**
 *  subMenu.js
 */

//드롭다운 메뉴
$(function(){
	$('#showAllMenu').on('click', function(){
		if($(this).text() == '장르별 바로가기 ▼'){
			$('#subMenuBox').css('visibility', 'visible');
			$(this).text('메뉴닫기 ▲').css('color', '#3e2723');
		}else{
			$('#subMenuBox').css('visibility', 'hidden');
			$(this).text('장르별 바로가기 ▼').css('color', 'black');
	}
	});
	
	// each 잘 안됨...
	// $('#genreBox li').each(index, function (index, item){
	// 	$(this).toggle('slow');
	// });


	$(".genreItem").on({
		mouseover:function(){
		// $(this).children(".subGenre1").show(800); 
		$(this).children(".subGenre").show(500); 
		},
		mouseleave:function(){
		$(this).children(".subGenre").hide(500);
		}
	});

	


});