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
	
	public static ArrayList<ProductDTO> showItemLink(int feed_no){
		
		//1. 연결하기
		SqlSession session=sqlSessionFactory.openSession(true);
		
		//2. sql문장 실행하기
		ArrayList<ProductDTO>  item_list= (ArrayList)session.selectList("showItemLink",feed_no);
		
		//3. 연결 종료하기
		session.close();
		
		return  item_list;	
	}
	
	public static ProductDTO showProduct(String product_name){

		//1. 연결하기
		SqlSession session=sqlSessionFactory.openSession(true);

		//2. sql문장 실행하기
		ProductDTO p = session.selectOne("showProduct",product_name);

		//3. 연결 종료하기
		session.close();

		return  p;	
	}
	
	
}
