package com.smhrd.modelDAO;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;
import com.smhrd.modelDTO.ProfileDTO;

public class ProfileDAO {

	
	static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	
	
	public int updateProfile(ProfileDTO pdto) {
		
		
			
			SqlSession session=sqlSessionFactory.openSession(true);
			
			int cnt = session.update("updateProfile", pdto);
			
			session.close();
			
				
		return cnt;
	}
	
	
	public ProfileDTO selectProfile(String nickname) {
		
		SqlSession session=sqlSessionFactory.openSession(true);
		
		ProfileDTO pdto = session.selectOne("selectProfile", nickname);
		
		session.close();
		
		return pdto;
	}
}
