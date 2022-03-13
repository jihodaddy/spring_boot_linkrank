package com.boot.linkrank.movie;

import java.util.ArrayList;
import java.util.HashMap;

public interface IMovieDAO {
	
		ArrayList<MovieVO> listAllMovie();   		// 전체 영화 조회
		void insertMovie(MovieVO Vo);			// 영화 정보 등록
		void updateMovie(MovieVO vo);			// 영화 정보 수정
		void deleteMovie(String movieNo);					// 영화 정보 삭제
		MovieVO detailViewMovie(String movieNo);// 상세 영화 조회
		ArrayList<MovieVO> movieSearch(HashMap<String, Object>map); //무비 검색
}
