package com.boot.linkrank.favorite;

import java.util.ArrayList;

public interface IFavoriteDAO {

	void insertFavorite(FavoriteVO vo);		//관심목록 등록
	void updateFavorite(FavoriteVO vo);	//관심목록 수정
	void deleteFavorite(String FavNo);		//관심목록 삭제
	
	ArrayList<FavoriteVO> favList(String favNo);	//전체조회
	
	
}
