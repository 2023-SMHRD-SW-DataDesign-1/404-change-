package com.smhrd.modelDAO;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;
import com.smhrd.modelDTO.MemberDTO;

public class MemberDAO {

	private SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	public int join(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("join", dto);
		session.close();
		return row;
	}
	
	public MemberDTO login(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		MemberDTO info = session.selectOne("com.smhrd.mapper.MemberMapper.login", dto);     //경로 정확하게 >> TYPEALIASES >> ALIAS
		session.close();
		return info;
	}

	public int update(MemberDTO dto) { 
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("com.smhrd.mapper.memberMapper.update", dto);
		session.close();
		return row;
	}
	
	public int delete(MemberDTO dto) { 
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("com.smhrd.mapper.memberMapper.delete", dto);
		session.close();
		return row;
	}
	
}
