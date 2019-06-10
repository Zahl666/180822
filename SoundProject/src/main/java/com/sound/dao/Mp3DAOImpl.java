package com.sound.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sound.web.Mp3VO;

@Repository
public class Mp3DAOImpl implements Mp3DAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.sound.mapper.Mapper";
	
	@Override
	public void search(Mp3VO vo) {
		// TODO Auto-generated method stub
		String title = sqlSession.selectOne(namespace+".search", vo);
		System.out.println(title);
	}

	@Override
	public List<Mp3VO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".listAll");
	}

	@Override
	public List<Mp3VO> list(String title) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".list", title);
	}


	
		
		
		
		
}
