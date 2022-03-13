package com.boot.linkrank.member;

import java.util.ArrayList;
import java.util.HashMap;

public interface IMemberService {
	MemberVO loginCheck(HashMap<String, Object> map);	// 로그인
	String memIdCheck(String memId);									// 아이디 중복확인
	void joinMember(MemberVO memVo);								// 회원가입 
	
	ArrayList<MemberVO> listAllMember();   						// 전체 회원 조회
	MemberVO detailViewMember(String memId);					// 상세 회원 조회
	void updateMember(MemberVO memVo);							// 회원 정보 수정
	void deleteMember(String memId);									// 회원 정보 삭제
}
