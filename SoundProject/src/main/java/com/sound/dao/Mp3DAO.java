package com.sound.dao;

import java.util.List;

import com.sound.web.Mp3VO;

public interface Mp3DAO {
	public void search(Mp3VO vo);
	public List<Mp3VO> list(String title) throws Exception;
	public List<Mp3VO> listAll() throws Exception;
}
