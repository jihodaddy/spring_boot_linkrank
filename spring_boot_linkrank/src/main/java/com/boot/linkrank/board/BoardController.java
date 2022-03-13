package com.boot.linkrank.board;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BoardController {
@Autowired
BoardService service;
	
	//게시판 전체 조회
	@RequestMapping("/sub/ratingBoardListView")
	public String ratingView(Model model) {
		ArrayList<BoardVO> board = service.listAllBoard();
		model.addAttribute("boardList" , board);
		return "sub/ratingBoardListView";
	}
	//관리자 게시판 전체 조회
		@RequestMapping("/admin/listAllBoard")
		public String listAllBoard(Model model) {
			ArrayList<BoardVO> board = service.listAllBoard();
			model.addAttribute("boardList" , board);
			return "admin/board/boardListView";
		}
	//관리자 게시글 삭제
		@RequestMapping("/admin/deleteBoard/{boardNo}")
		public String deleteBoard(@PathVariable String boardNo) {
			service.deleteBoard(boardNo);
			return "redirect:../listAllBoard";
		}
	
	// 게시글 누를때 게시판 상세 조회
	@RequestMapping("/sub/detailViewRating/{boardNo}")
	public String detailViewRating(@PathVariable String boardNo, Model model) {
		BoardVO board = service.detailViewBoard(boardNo);
		model.addAttribute("b", board);
		return "sub/detailRaitingBoardView";
	}

	//평점 게시글 등록(ajax)
	@ResponseBody
	@RequestMapping("/sub/writeBoard")
	public String writeBoard(BoardVO vo,
										HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		vo.setMemId(memId);
		service.writeBoard(vo);
		System.out.println(vo.getMemId());
		System.out.println(vo.getBoardTitle());
		return"success";
	}
}
