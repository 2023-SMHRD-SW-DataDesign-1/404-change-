package com.smhrd.modelDAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;
import com.smhrd.modelDTO.NoticeDTO;
import com.smhrd.modelDTO.ProductDTO;

public class ProductDAO {

	
	static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	
	public static ArrayList<ProductDTO> showItemList(String nickname){
		
		//1. 연결하기
		SqlSession session=sqlSessionFactory.openSession(true);
		
		//2. sql문장 실행하기
		ArrayList<ProductDTO>  item_list= (ArrayList)session.selectList("showItemList",nickname);
		
		//3. 연결 종료하기
		session.close();
		
		return  item_list;	
	}
	
	public static ArrayList<ProductDTO> showItemLink(int feedNo){
		
		//1. 연결하기
		SqlSession session=sqlSessionFactory.openSession(true);
		
		//2. sql문장 실행하기
		ArrayList<ProductDTO>  item_list= (ArrayList)session.selectList("showItemLink",feedNo);
		
		//3. 연결 종료하기
		session.close();
		
		return  item_list;	
	}
	
	
}
