<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Netflix raiting site</title>
    <link rel="stylesheet" href="<c:url value='/css/index.css'/>" type="text/css">
	<link rel="stylesheet" href="<c:url value='/css/menu.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='/css/slideShow.css'/>" type="text/css">
   	<link rel="stylesheet" href="<c:url value='/css/movieRatingBox.css'/>" type="text/css">
	<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
   	<script src="<c:url value='/js/slideShow.js'/>"></script>
   	<script src="<c:url value='/js/slideShow.js'/>"></script>
    <script src="<c:url value='/js/subMenu.js'/>"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
</head>
<body>
   
        <header>
            <div id="headerBox">
                <div id="logoBox">
                    <div><a href="<c:url value='/'/>"><img src="<c:url value='/image/icon/LINKRANK_logo.png'/>"></a></div>
                </div>
                <div id="topMenuBox">
                    <div id="loginBox">
            
	                    <!-- 비로그인 -->
	                    <c:if test="${empty sessionScope.sid }">
	                            <a href="<c:url value='/loginForm'/>"> Login </a>&nbsp;
	                            <a href="<c:url value='/joinForm'/>">회원가입</a>
	                   	</c:if>
	                   	<!-- 로그인  -->
	                   	<c:if test="${not empty sessionScope.sid}">
	                   			${sessionScope.sid} 님 환영합니다!&nbsp;
	                            <a href="<c:url value='/logout'/>"> Logout </a>&nbsp;
	                            <a href="<c:url value='/mypage'/>">MyPage</a>&nbsp;
	                            <a href="<c:url value='/joinForm'/>">장바구니</a>
	                   	</c:if>
                  		<c:if test="${not empty sessionScope.sid and sessionScope.sid =='admin12' }">  
					   		    <a href="<c:url value='/admin/adminMain'/>">관리자</a>
   					    </c:if>
                    </div>
                </div>
            </div>  
        </header>
        <nav>
            <div id="searchBox">
                <div>
                    <h4>장르/제목 검색</h4>
                </div>
                <div id="searchBar">
	                <form method="get" id="searchMovie" action="/searchMovie">
	                    <input type="text" id="search" name="movieSearch" placeholder="영화를 검색하세요." size="30">
	                    <input type="submit" id="searchBtn" value="검색"></input>
                    </form>
                </div>
           
            </div> 
            <div id="mainMenuBox">
                <ul id="menuItem">
                    <li><a href="#" id="showAllMenu">장르별 바로가기 ▼</a></li>
                    <li><a href="/">HOME</a></li>
                    <li><a href="<c:url value='/sub/ratingBoardListView'/>">평점/리뷰</a></li>
                    <li><a href="#">관심 목록</a></li>
                    <li><a href="#">자유게시판</a></li>
                    <li><a href="/crawrank">순위</a></li>
                    <li><a href="#">이벤트</a></li>
                </ul>
            </div>
            <!-- mainMenuBox끝 -->
            <div id="subMenuBox">
                <div id="subMenuItem">
                    <ul id="genreBox">
                        <li class="genreItem"><a href="#">액션&어드벤쳐</a>
                            <ul class="subGenre">
                                <li><a href="https://www.netflix.com/browse/genre/1365" target="_blank">액션&어드벤처</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/7442" target="_blank">어드벤처</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/7700" target="_blank">서부영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/8985" target="_blank">무술영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/43040" target="_blank">액션 코미디</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/43048" target="_blank">액션 스릴러</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/2125" target="_blank">군대 액션 어드벤처</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/10118" target="_blank">만화 원작&슈퍼히어로</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/10702" target="_blank">스파이액션 어드벤처</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/46576" target="_blank">고전 액션 어드벤처</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/9584" target="_blank">범죄 액션 어드벤처</a></li>
                            </ul>
                        </li>
                        <li class="genreItem"><a href="#">애니메이션</a>
                            <ul class="subGenre">
                                <li><a href="https://www.netflix.com/browse/genre/7424">애니메이션</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/2729">SF애니메이션</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/6721">TV애니메이션</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/10695">공포 애니메이션</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/11881">성인 애니메이션</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/2653">액션 애니메이션</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/3063">애니메이션 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/11146">판타지 애니메이션</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/9302">코미디 애니메이션</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/452">드라마 애니메이션</a></li>
                            </ul>
                        </li>
                        <li class="genreItem"><a href="#">어린이&가족</a>
                            <ul class="subGenre">
                                <li><a href="">어린이&가족 영화</a></li>
                                <li><a href="">교육물</a></li>
                                <li><a href="">디즈니</a></li>
                                <li><a href="">TV만화</a></li>
                                <li><a href="">가족영화</a></li>
                                <li><a href="">동물이야기</a></li>
                                <li><a href="">어린이 TV</a></li>
                                <li><a href="">어린이 음악</a></li>
                                <li><a href="">0~2세 영화</a></li>
                                <li><a href="">2~4세 영화</a></li>
                                <li><a href="">5~7세 영화</a></li>
                                <li><a href="">8~10세 영화</a></li>
                                <li><a href="">11~12세 영화</a></li>
                                <li><a href="">동화 원화 영화</a></li>
                            </ul>
                        </li>
                        <li class="genreItem"><a href="#">고전영화</a>
                            <ul class="subGenre">
                                <li><a href="">고전영화</a></li>
                                <li><a href="">무성영화</a></li>
                                <li><a href="">고전 코미니</a></li>
                                <li><a href="">고전 드라마</a></li>
                                <li><a href="">고전 스릴러</a></li>
                                <li><a href="">필름 누아르</a></li>
                                <li><a href="">고전 전쟁영화</a></li>
                                <li><a href="">해외 전쟁영화</a></li>
                                <li><a href="">고전 서부영화</a></li>
                                <li><a href="">고전 SF&판타지</a></li>
                            </ul>
                        </li>
                        <li class="genreItem"><a href="">코미디</a>
                            <ul class="subGenre">
                                <li><a href="">코미디</a></li>
                                <li><a href="">풍자</a></li>
                                <li><a href="">블랙 코미디</a></li>
                                <li><a href="">해외 코미디</a></li>
                                <li><a href="">심야 코미디</a></li>
                                <li><a href="">정치 코미디</a></li>
                                <li><a href="">10대 코미디</a></li>
                                <li><a href="">인디 코미디</a></li>
                                <li><a href="">모큐코미디</a></li>
                                <li><a href="">스포츠 코미디</a></li>
                                <li><a href="">로맨틱 코미디</a></li>
                                <li><a href="">스쿠루볼 코미디</a></li>
                                <li><a href="">슬랙스틱 코미디</a></li>
                                <li><a href="">스탠드업 코미디</a></li>
                                <li><a href="">컬트 영화</a></li>
                                <li><a href="">컬트 코미디</a></li>
                                <li><a href="">컬트 공포 영화</a></li>
                                <li><a href="">걸트 SF&판타지</a></li>
                                <li><a href="">B급 공포 영화</a></li>
                                <li><a href="">과장스러운 영화</a></li>
                            </ul>
                        </li>
                        <li class="genreItem"><a href="#">다큐멘터리</a>
                            <ul class="subGenre">
                                <li><a href="">다큐멘터리</a></li>
                                <li><a href="">전기 다큐멘터리</a></li>
                                <li><a href="">역사 다큐멘터리</a></li>
                                <li><a href="">범죄 다큐멘터리</a></li>
                                <li><a href="">해외 다큐멘터리</a></li>
                                <li><a href="">군대 다큐멘터리</a></li>
                                <li><a href="">정치 다큐멘터리</a></li>
                                <li><a href="">종교 다큐멘터리</a></li>
                                <li><a href="">스포츠 다큐멘터리</a></li>
                                <li><a href="">여행&모험 다큐멘터리</a></li>
                                <li><a href="">과학&자연 다큐멘터리</a></li>
                                <li><a href="">사회&문화 다큐멘터리</a></li>
                                <li><a href="">음악&콘서트 다큐멘터리</a></li>
                            </ul>
                        </li>
                        <li class="genreItem"><a href="#">드라마</a>
                            <ul class="subGenre">
                                <li><a href="https://www.netflix.com/browse/genre/5763">드라마 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/3653">실화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/12123">시대물</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/6616">정치 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/3179">전기 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/6889">범죄 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/6384">감동 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/500">쿼어 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/11">전쟁 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/528582748">법정 드라마</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/7243">스포츠 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/1255">로맨틱 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/3947">사회 이슈 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/29809">고전 드라마 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/2150">해외 드라마 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/384">인디 드라마 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/9299">10대 드라마 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/5012">쇼 비지니스 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/4961">소설 원작 드라마 영화</a></li>
                            </ul>
                        </li>
                        <li class="genreItem"><a href="#">해외영화</a>
                            <ul class="subGenre">
                                <li><a href="https://www.netflix.com/browse/genre/7462"> 해외 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/29764">예술 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/4426"> 해외 코미디</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/10306">해외 스릴러</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/32473">해외 고전 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/8654"> 해외 공포 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/6485"> 해외 SF&판타지</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/5161"> 해외 다큐멘터리</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/2150"> 해외 드라마 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/7153"> 해외 로맨틱 영화</a></li>
                                <li><a href="https://www.netflix.com/browse/genre/11828">해외 액션 어드벤처</a></li>
                            </ul>
                        </li>
                        <li class="genreItem"><a href="#">공포영화</a>
                            <ul class="subGenre">
                                <li><a href="">공포 영화</a></li>
                                <li><a href="">괴수 영화</a></li>
                                <li><a href="">괴물 영화</a></li>
                                <li><a href="">좀비 영화</a></li>
                                <li><a href="">사탄 영화</a></li>
                                <li><a href="">독립 영화</a></li>
                                <li><a href="">실험 영화</a></li>
                                <li><a href="">공포 코미디</a></li>
                                <li><a href="">인디 스릴러</a></li>
                                <li><a href="">10대 공포물</a></li>
                                <li><a href="">뱀파이어 영화</a></li>
                                <li><a href="">늑대인간 영화</a></li>
                                <li><a href="">연쇄 살인 영화</a></li>
                                <li><a href="">심해 공포 영화</a></li>
                                <li><a href="">해외 공포 영화</a></li>
                                <li><a href="">인디 액션 어드벤처</a></li>
                                <li><a href="">초자연 공포 영화</a></li>
                            </ul>
                        </li>
                        <li class="genreItem"><a href="#">음악영화</a>
                            <ul class="subGenre">
                                <li><a href="">음악</a></li>
                                <li><a href="">라틴 음악</a></li>
                                <li><a href="">어린이 음악</a></li>
                                <li><a href="">컨트리&포크</a></li>
                                <li><a href="">락&팝 콘서트</a></li>
                                <li><a href="">월드 뮤직 콘서트</a></li>
                                <li><a href="">재즈&이지 리스닝</a></li>
                                <li><a href="">어반&재즈 콘서트</a></li>
                                <li><a href="">뮤지컬</a></li>
                                <li><a href="">고전 뮤지컬</a></li>
                                <li><a href="">디즈니 뮤지컬</a></li>
                                <li><a href="">스테이지 뮤지컬</a></li>
                                <li><a href="">쇼 비지니스 뮤지컬</a></li>
                            </ul>
                        </li>
                        <li class="genreItem"><a href="#">로맨스영화</a>
                            <ul class="subGenre">
                                <li><a href="">로맨틱 영화</a></li>
                                <li><a href="">인기 로맨스</a></li>
                                <li><a href="">괴짜 로맨스</a></li>
                                <li><a href="">로맨틱 드라마</a></li>
                                <li><a href="">로맨틱 코미디</a></li>
                                <li><a href="">고전 로맨틱 영화</a></li>
                                <li><a href="">독립 로맨틱 영화</a></li>
                                <li><a href="">해외 로맨틱 영화</a></li>
                                <li><a href="">에로틱 로맨틱 영화</a></li>
                            </ul>
                        </li>
                        <li class="genreItem"><a href="#">SF&판타지</a>
                            <ul class="subGenre">
                                <li><a href="">SF&판타지</a></li>
                                <li><a href="">판타지 영화</a></li>
                                <li><a href="">외계인 SF</a></li>
                                <li><a href="">SF 스릴러</a></li>
                                <li><a href="">SF 어드벤처</a></li>
                                <li><a href="">SF 공포 영화</a></li>
                                <li><a href="">SF 드라마 영화</a></li>
                                <li><a href="">액션 SF&판타지</a></li>
                                <li><a href="">고전 SF&판타지</a></li>
                                <li><a href="">컬트 SF&판타지</a></li>
                            </ul>
                        </li>
                        <li class="genreItem"><a href="#">스포츠</a>
                            <ul class="subGenre">
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                            </ul>
                        </li>
                        <li class="genreItem"><a href="#">스릴러</a>
                            <ul class="subGenre">
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                            </ul>
                        </li>
                        <li class="genreItem"><a href="#">TV쇼프로그램</a>
                            <ul class="subGenre">
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
	
	</body>
</html>