/**
 *  slideShow.js
 */

$(function(){
	//무비 순위 슬라이드

	//슬라이드패널의 index 값 저장(현재 위치)
	var movedIndex = 0;
	
	//슬라이드 패널을 움직이는 함수
	function movieMoveSlide(index){
		movedIndex = index;
		
		//슬라이드 이동
		var moveLeft = -(index *1280); // 왼쪽으로 이동 거리
		// var moveLeft = -(index *271);
		$('#movieSlidePanel').animate({'left':moveLeft}, 'slow');
		
	}
	
	//prev 버튼 클릭하면 앞(왼쪽)으로 이동
	$('.moviePrevButton').on('click', function(){
		if(movedIndex != 0)
		movedIndex = movedIndex -1;
		
		movieMoveSlide(movedIndex);
	});
	
	//next 버튼 클릭하면 뒤(오른쪽)으로 이동
	$('.movieNextButton').on('click', function(){
		// if(movedIndex != 4)
		if(movedIndex != 1)
		movedIndex = movedIndex +1;
		
		movieMoveSlide(movedIndex);
	});
	
	// 시리즈 순위 슬라이드

	var movedIndex = 0;
	
	function moveSlide(index){
		movedIndex = index;
		
		var moveLeft = -(index *1280); // 왼쪽으로 이동 거리
		$('#seriesSlidePanel').animate({'left':moveLeft}, 'slow');
	}
	
	$('.seriesPrevButton').on('click', function(){
		if(movedIndex != 0)
		movedIndex = movedIndex -1;
		
		moveSlide(movedIndex);
	});
	
	$('.seriesNextButton').on('click', function(){
		if(movedIndex != 1)
		movedIndex = movedIndex +1;
		
		moveSlide(movedIndex);
	});

});


	