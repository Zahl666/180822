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
		
		//return (email == null)? false:true; //boolean 타입
		
	}

	@Override
	public void memberName(MemberVO vo) {
		
	}

	//회원 로그인 체크
	@Override
	public boolean loginCheck(MemberVO vo) {
		// TODO Auto-generated method stub
		String name = sqlSession.selectOne(namespace+".loginCheck", vo);
		
		//삼항연산자 name이 null일 경우 false null이 아니면 true
		return (name == null) ? false:true;
	}
	//회원 로그인 정보
	@Override
	public MemberVO viewMember(MemberVO vo) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne(namespace+".viewMember", vo);
	}
	//회원 로그아웃
	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		
	}

	
	
	
}
