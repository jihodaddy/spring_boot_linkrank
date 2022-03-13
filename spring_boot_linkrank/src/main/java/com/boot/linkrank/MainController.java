package com.boot.linkrank;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

//	@RequestMapping("/")
//	public String Index() {
//		return "index";
//	}
	
	@RequestMapping("/sub/rating")
	public String Rating() {
		return "sub/rating";
	}
	
	@RequestMapping("/admin/adminMain")
	public String adminMovieMain() {
		return "admin/adminMain";
	}
}
