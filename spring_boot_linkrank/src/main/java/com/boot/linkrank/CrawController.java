package com.boot.linkrank;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boot.linkrank.movie.MovieSearchService;
import com.boot.linkrank.movie.MovieVO;

@Controller
public class CrawController {

	
	@RequestMapping("/crawring")
	public String main(Model model) throws IOException {
		 
		 	String url = "https://flixpatrol.com/top10/streaming/south-korea/2022-03-29/";
		 	Document doc =Jsoup.connect(url).get();
		 	
		 	// 순위 제목 추출
		 	Elements eMovie = doc.select("body > div:nth-child(3) > div:nth-child(3) > div:nth-child(1) > div > div > div:nth-child(2) > div > div > table");
		 	//Elements eShow = doc.select("body > div:nth-child(3) > div:nth-child(3) > div:nth-child(2) > div > div > div:nth-child(2) > div > div > table");
		 	
		 	Elements eMovieRank = eMovie.select("tbody.tabular-nums > tr > td:nth-child(3) > a");
		 	//Elements eShowRank = eShow.select("tbody.tabular-nums > tr > td:nth-child(3) > a");
		 			 	
		 	//System.out.println(eMovieRank.text());
		 	//System.out.println(eShowRank.text());
		 	
		 	
		 	List<String> movieList = new ArrayList<>();
		 	
		 	for(int i=0;i<30;i++) {
		 		movieList.add(eMovieRank.get(i).text());
		 		
		 	}

		 	ArrayList<MovieVO> movieRank = new ArrayList<MovieVO>();
		 	for(String title : movieList) {
		 		
		 		try {
					MovieVO vo = MovieSearchService.searchMovie(title).get(0);
					System.out.println(vo.getMovieName());
					movieRank.add(vo);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		 	}
		 	model.addAttribute("movieRank", movieRank);
		 
	        return "craw/craw";
	    }
		
		// 넷플릭스 순위 flixpatrol 크롤링
		@RequestMapping("/crawrank")
		public String crawrank(Model model) throws IOException {
			String url = "https://flixpatrol.com/top10/netflix/world/today/full/#netflix-1";
		 	Document doc =Jsoup.connect(url).get();
		 	Elements ele = doc.getElementsByClass("tabular-nums");
		 	//e1 1등만
		 	//Elements e1 = ele.select("tr:nth-child(1) > td:nth-child(3) > a");
		 	// 순위 제목 추출
		 	Elements e2 = ele.select("tr > td:nth-child(3) > a");
		 	
		 	//한줄로 다 받아옴
		 	//System.out.println(e2.text());
		 	//제목가져옴
		 	//System.out.println(e2.html());
		 	
		 	List<String> RankResult = new ArrayList<>();
		 	for(int i=0;i<30;i++) {
		 		RankResult.add(e2.get(i).text());
		 		
		 	}
		 	//RankResult.add(e2.html());
		 	System.out.println("순위결과");
		 	System.out.println(RankResult);
		 	//model.addAttribute("movieRank", RankResult);
		 	
		 	System.out.println("무비VO");
		 	ArrayList<MovieVO> movieList = new ArrayList<MovieVO>();
		 	for(String title : RankResult) {
		 		
		 		try {
					MovieVO vo = MovieSearchService.searchMovie(title).get(0);
					System.out.println(vo.getMovieName());
					movieList.add(vo);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		 	}
		 	model.addAttribute("movieList", movieList);
		 			 	
		 	return "/movie/movieRankView";
		}
	    
	    
	
}
