package com.sound.dao;

import javax.servlet.http.HttpSession;

import com.sound.web.MemberVO;

public interface MemberDAO {
	public void insertMember(MemberVO vo);
	public void signInCheck(MemberVO vo);
	public void memberName(MemberVO vo);
	//회원 로그인 체크
	public boolean loginCheck(MemberVO vo);
	//회원 로그인 정보
	public MemberVO viewMember(MemberVO vo);
	//회원 로그아웃
	public void logout(HttpSession session);
}
