package com.earth.heart.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.earth.heart.domain.BoardDTO;

@Repository
public class BoardDaoImpl implements BoardDao{

	@Autowired
	private SqlSession session;
	private static String namespace = "com.earth.heart.dao.BoardMapper.";
	
	@Override
	public BoardDTO select(Integer bno) throws Exception {
		
		return session.selectOne(namespace + "select", bno);
	}

	@Override
	public int deleteAll() throws Exception {
		
		return  session.delete(namespace + "deleteAll");		
	}

	@Override
	public int insert(BoardDTO dto) throws Exception {
		
		return session.insert(namespace + "insert", dto);
	}

	
}
