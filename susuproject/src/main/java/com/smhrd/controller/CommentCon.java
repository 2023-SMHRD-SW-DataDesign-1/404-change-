package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.modelDAO.FeedDAO;
import com.smhrd.modelDTO.FeedCommentDTO;


@WebServlet("/CommentCon")
public class CommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int feedNo= Integer.parseInt(request.getParameter("feedNo"));
		/* String profileImage = request.getParameter("profileImage"); */
		String nickname= request.getParameter("nickname");
		String text = request.getParameter("text");
		
		System.out.println(feedNo);
		/* System.out.println(profileImage); */
		System.out.println(nickname);
		System.out.println(text);
		
		// 수정해야함
		FeedCommentDTO fcdto = new FeedCommentDTO(feedNo, nickname, text, 0);
		FeedDAO fdao = new FeedDAO();
		
		int row = fdao.saveComment(fcdto);
		
		if(row>0) {
			System.out.println("댓글 저장 성공");
		}else {
			System.out.println("댓글 저장 실패");
		}
		
		
		response.sendRedirect("ChannelDetail/FeedDetail.jsp");
		
	}

}
