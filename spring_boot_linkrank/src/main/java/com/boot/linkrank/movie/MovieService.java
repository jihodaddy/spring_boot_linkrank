package com.boot.linkrank.movie;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class MovieService implements IMovieService {
	@Autowired
	@Qualifier("IMovieDAO")
	IMovieDAO dao;
	
	@Override
	public ArrayList<MovieVO> listAllMovie() {
		return dao.listAllMovie();
	}

	@Override
	public void insertMovie(MovieVO Vo) {
		dao.insertMovie(Vo);
	}

	@Override
	public void updateMovie(MovieVO vo) {
		dao.updateMovie(vo);
	}

	@Override
	public void deleteMovie(String movieNo) {
		dao.deleteMovie(movieNo);
	}

	@Override
	public MovieVO detailViewMovie(String movieNo) {
		
		return dao.detailViewMovie(movieNo);
	}

	@Override
	public ArrayList<MovieVO> movieSearch(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
