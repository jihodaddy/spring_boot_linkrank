package com.boot.linkrank.member;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class MemberController {
	@Autowired
	MemberService service;
	
	// 로그인 폼으로 이동
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "member/loginForm";
	}
	
	// 로그인 처리 : id와 pwd 전달 받아서 로그인 체크
	@ResponseBody
	@RequestMapping("/login")
	public String loginCheck(@RequestParam HashMap<String, Object> param,
											   HttpSession session) {
		
	// 로그인 체크 결과
	MemberVO vo = service.loginCheck(param);
	String result = "fail";
	System.out.println("로그인 받은 값"+param);
	if(vo != null) {
		//로그인 성공하면 세션 변수 지정
		session.setAttribute("sid", vo.getMemId());
		result = "success";
	}
	
	return result;
	}
	
	//로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// 회원가입 폼으로 이동
	@RequestMapping("/joinForm")
	public String joinForm() {
		return "member/joinForm";
	}
		
		
	// 사용자 아이디 중복 확인
	@ResponseBody
	@RequestMapping("/memIdCheck")
	public String memIdCheck(@RequestParam("memId") String memId) {
		String memId_result = service.memIdCheck(memId);
		String result = "use";
		if(memId_result != null) 
			result = "no_use";
		
		return result;
	}
	//회원가입
	@RequestMapping("/member/joinMember")
	public String joinMember(MemberVO vo) {
		service.joinMember(vo);
		return "redirect:/";
	}
	
	// 전체 회원 조회
	@RequestMapping("/admin/listAllMember")
	public String listAllMember(Model model) {
		ArrayList<MemberVO> memList = service.listAllMember();
		model.addAttribute("memList", memList);		
		return "admin/member/memberListView";
	}
	//회원 상세 정보
	@RequestMapping("/member/detailViewMember/{memId}")
	public String detailViewMember(@PathVariable String memId, Model model) {
		MemberVO mem = service.detailViewMember(memId);
		model.addAttribute("mem", mem);
		return "admin/member/memberDetailView";
	}
	
	//회원 정보 수정폼 이동
	@RequestMapping("/member/updateMemberForm/{memId}")
	public String updateMemberForm(@PathVariable String memId, Model model) {
		MemberVO mem = service.detailViewMember(memId);
		model.addAttribute("mem", mem);
		return "admin/member/updateMemberForm";
	}
	//회원 정보 수정
	@RequestMapping("/admin/updateMember")
	public String updateMember(MemberVO vo) {
		service.updateMember(vo);
		return "redirect:./listAllMember";
	}
	// 회원 정보 삭제
	@RequestMapping("/member/deleteMember/{memId}")
	public String deleteMember(@PathVariable String memId) {
		service.deleteMember(memId);
		return "redirect:/admin/listAllMember";
	
	}
}









