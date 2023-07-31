package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.modelDAO.MemberDAO;
import com.smhrd.modelDTO.MemberDTO;

@WebServlet("/LoginContol")
public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// 데이더 받아오기
		String member_id = request.getParameter("member_id");
		String password = request.getParameter("password");
		// console에 프린트 할 값
		System.out.println("member_id : " + member_id);
		System.out.println("password : " + password);
		// 3.login메소드 호출
		// info = 로그인한 회원의 정보
		MemberDTO info = new MemberDAO().login(new MemberDTO(member_id, password));
		// 4.login성공했을 때 회원정보 유지
		// 정보 유지 -> cookie&session
		// session 객체 생성
		if (info != null) {
			// login성공했을 때 회원정보 유지
			// 정보 유지 -> cookie&session
			// session 객체 생성
			HttpSession session = request.getSession();
			// session 저장소에 info 저장
			session.setAttribute("info", info);
			System.out.println("로그인 성공");
		} else {  
			System.out.println("로그인 실패");
		}

		// 5.페이지 이동
		response.sendRedirect("./main.jsp");

	}// service

}// class
