package com.sound.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sound.web.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.sound.mapper.Mapper";
	
	@Override
	public void insertMember(MemberVO vo) {
		sqlSession.insert(namespace+".insertMember", vo);
	}

	@Override
	public void signInCheck(MemberVO vo) {
		String email = sqlSession.selectOne(namespace+".signInCheck", vo);
		System.out.println(email);
		
		//return (email == null)? false:true; //boolean Ÿ��
		
	}

	@Override
	public void memberName(MemberVO vo) {
		
	}

	//ȸ�� �α��� üũ
	@Override
	public boolean loginCheck(MemberVO vo) {
		// TODO Auto-generated method stub
		String name = sqlSession.selectOne(namespace+".loginCheck", vo);
		
		//���׿����� name�� null�� ��� false null�� �ƴϸ� true
		return (name == null) ? false:true;
	}
	//ȸ�� �α��� ����
	@Override
	public MemberVO viewMember(MemberVO vo) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne(namespace+".viewMember", vo);
	}
	//ȸ�� �α׾ƿ�
	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		
	}

	
	
	
}
