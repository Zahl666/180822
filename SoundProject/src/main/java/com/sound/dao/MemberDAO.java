package com.sound.dao;

import javax.servlet.http.HttpSession;

import com.sound.web.MemberVO;

public interface MemberDAO {
	public void insertMember(MemberVO vo);
	public void signInCheck(MemberVO vo);
	public void memberName(MemberVO vo);
	//ȸ�� �α��� üũ
	public boolean loginCheck(MemberVO vo);
	//ȸ�� �α��� ����
	public MemberVO viewMember(MemberVO vo);
	//ȸ�� �α׾ƿ�
	public void logout(HttpSession session);
}
