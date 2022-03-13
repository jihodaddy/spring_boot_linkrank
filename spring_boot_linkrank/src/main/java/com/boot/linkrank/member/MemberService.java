package com.boot.linkrank.member;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class MemberService implements IMemberService {
	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
	
	@Override
	public MemberVO loginCheck(HashMap<String, Object> map) {		
		return dao.loginCheck(map);
	}
	
	@Override
	public String memIdCheck(String memId) {
		return dao.memIdCheck(memId);
	}
	@Override
	public void joinMember(MemberVO memVo) {  //회원가입
		dao.joinMember(memVo);
	}
	@Override
	public ArrayList<MemberVO> listAllMember(){   						// 전체 회원 조회
		return dao.listAllMember();
	}
	@Override
	public MemberVO detailViewMember(String memId) {					// 상세 회원 조회
		return dao.detailViewMember(memId);
	}
	@Override
	public void updateMember(MemberVO memVo) {							// 회원 정보 수정
		dao.updateMember(memVo);
	}
	@Override
	public void deleteMember(String memId) {									// 회원 정보 삭제
		dao.deleteMember(memId);
	}
	
	
}
