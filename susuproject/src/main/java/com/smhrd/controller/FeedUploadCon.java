package com.smhrd.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.Enumeration;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.ibatis.session.SqlSessionFactory;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.modelDAO.FeedDAO;
import com.smhrd.modelDTO.FeedDTO;


@WebServlet("/FeedUploadCon")
public class FeedUploadCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("[feeduploadcon]");
		
		
		//파일 가져오기=>MultipartRequest 객체 사용
		
		//MultipartRequest 변수 설정
		//1. request 객체
//		String nickname = request.getParameter("nickname");
//		String feedImages = request.getParameter("feedImages");
//		String text = request.getParameter("text");
	
		//2. savePath(저장경로)
		//webapp-img의 경로 가져오기
//		String savePath=request.getServletContext().getRealPath("");//BoardWriteController의 실행위치
		String savePath=request.getServletContext().getRealPath("img2"); //img 폴더의 실행위치
		
		//경로 보기
		System.out.println(savePath);
		
		//3. maxSize: 파일크기 제한		
		int maxSize=10*1024*1024; //10MB
		
		//4. encoding
		String encoding="UTF-8";
		
		//5. 중복 제거
		//같은 이름의 파일을 올리면 숫자를 뒤에 붙여 파일 이름의 중복 제거함
		DefaultFileRenamePolicy rename= new DefaultFileRenamePolicy();
		 
		
		//MultipartRequest 객체 생성
		MultipartRequest multi= new MultipartRequest(request, savePath, maxSize, encoding, rename);
		
		
		//데이터 받아오기
		
 
		String nickname=multi.getParameter("nickname");
		
		//파일 이름 찾을 때는 getFilesystemName 객체 사용
		String feedImages=multi.getFilesystemName("feedImages"); 
//		String filename2=multi.getFilesystemName("filename2"); 
	
		String text=multi.getParameter("text");
		
		//출력문

		System.out.println("nickname:"+nickname);
		System.out.println("feedImages");
		System.out.println("text:"+ text);
		
		
		//upload 메소드 호출

		FeedDTO fdto= new FeedDTO(nickname, feedImages,text);
		FeedDAO fdao = new FeedDAO();
		int row = fdao.uploadFeed(fdto);
	
		//성공실패여부에 따라 페이지 이동
		
		if(row>0) {
			System.out.println("피드 업로드 성공");
		}else {
			System.out.println("피드 업로드 실패");
		}
		
		
		response.sendRedirect("../Channel/Notice.jsp.jsp");
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
