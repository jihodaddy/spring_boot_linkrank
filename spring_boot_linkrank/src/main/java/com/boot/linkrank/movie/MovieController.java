package com.boot.linkrank.movie;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boot.linkrank.board.BoardService;
import com.boot.linkrank.board.BoardVO;



@Controller
public class MovieController {
	@Autowired
	MovieService service;
	@Autowired
	BoardService bservice;
	
	//인덱스 호출시 영화 정보
	@RequestMapping("/")
	public String indexMovie(Model model) {
		ArrayList<MovieVO> movieList =service.listAllMovie();
		model.addAttribute("movieList", movieList);
		
		return "index";
	}
	//관리자 영화목록
	@RequestMapping("/admin/listAllMovie")
	public String listAllMovie(Model model) {
		ArrayList<MovieVO> movieList =service.listAllMovie();
		model.addAttribute("movieList", movieList);
		
		return "admin/movie/movieListView";
	}
	
	
	// 영화 평점 상제페이지로 이동, 평점 게시글 불러오기
	@RequestMapping("/movie/detailViewMovie/{movieNo}")
	public String detailViewMovie(@PathVariable String movieNo, Model model) {
		MovieVO mv = service.detailViewMovie(movieNo);
		ArrayList<BoardVO> bList = bservice.detailMovieBoardView(movieNo);
		model.addAttribute("movie", mv);
		model.addAttribute("bList", bList);
		
		return "sub/detailMovieView"; 
	}
	
		//관리자 영화등록폼으로 이동
		@RequestMapping("/admin/movie/insertMovieForm")
		public String insertMovieForm() {
						
			return "admin/movie/insertMovieForm";
		}
		// 영화등록
		@RequestMapping("/admin/movie/insertMovie")
		public String insertMovie(MovieVO vo) {
			service.insertMovie(vo);
				return "redirect:./movieListView";
		}
		@RequestMapping("/movie/deleteMovie/{movieNo}")
		public String deleteMovie(@PathVariable String movieNo) {
			service.deleteMovie(movieNo);
			return "redirect:../movieListView";
		}
		
		//네이버 api
		@RequestMapping("/searchMovie")
		public String searchMovie(@RequestParam("movieSearch") String keyword,
													Model model) {
			ArrayList<MovieVO> movieList = MovieSearchService.searchMovie(keyword);
			model.addAttribute("keyword", keyword);
			model.addAttribute("movieList", movieList);
			return "movie/movieSearchView";
		}
		
}
