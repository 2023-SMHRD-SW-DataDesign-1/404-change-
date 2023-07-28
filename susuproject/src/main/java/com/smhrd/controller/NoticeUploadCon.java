package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.modelDAO.NoticeDAO;
import com.smhrd.modelDTO.NoticeDTO;

@WebServlet("/NoticeUploadCon")
public class NoticeUploadCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		String nickname = request.getParameter("nickname");
		String time = null;
		
		System.out.println(title);
		System.out.println(text);
		System.out.println(nickname);
		
		NoticeDTO ndto = new NoticeDTO( nickname,text,time,title);
		NoticeDAO ndao = new NoticeDAO();
		
		 int row = ndao.UploadNotice(ndto);
		
		if(row>0){
			System.out.println("공지사항 업로드 완료");			
		}else {
			System.out.println("공지사항 업로드 실패");
		}
		
		response.sendRedirect("./Seller/MyNotice.jsp");
		
		
	}

}
