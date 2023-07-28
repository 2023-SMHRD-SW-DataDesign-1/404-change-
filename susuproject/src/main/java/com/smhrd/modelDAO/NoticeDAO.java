package com.smhrd.modelDAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;
import com.smhrd.modelDTO.NoticeDTO;


public class NoticeDAO {

	static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	
	
	public int UploadNotice(NoticeDTO ndto) {
		
		SqlSession session=sqlSessionFactory.openSession(true);
		
		int row = session.insert("UploadNotice", ndto);
		
		session.close();
		
		return row;
	}
	
	public static ArrayList<NoticeDTO> showAllNotice(String nickname){
		
		//1. 연결하기
		SqlSession session=sqlSessionFactory.openSession(true);
		
		//2. sql문장 실행하기
		ArrayList<NoticeDTO>  noticeAll_list=(ArrayList)session.selectList("showAllNotice",nickname);
		
		//3. 연결 종료하기
		session.close();
		
		return noticeAll_list;	
	}
	
	public static NoticeDTO showOneNotice(int noticeNo){
		
		System.out.println(noticeNo);
		SqlSession session=sqlSessionFactory.openSession(true);
		
		NoticeDTO ndto = session.selectOne("showOneNotice",noticeNo);
		System.out.println(ndto);
		session.close();
		
		return ndto ;
	}
}
