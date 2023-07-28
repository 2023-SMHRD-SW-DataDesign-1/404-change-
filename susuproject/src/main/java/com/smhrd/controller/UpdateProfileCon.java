package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.modelDAO.ProfileDAO;
import com.smhrd.modelDTO.ProfileDTO;


@WebServlet("/UpdateProfileCon")
public class UpdateProfileCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String nickname= request.getParameter("nickname");
		String profileImage = request.getParameter("file");
		String profileDescription = request.getParameter("profileDescription");
		String bannerImage = request.getParameter("bannerImage");
		
		System.out.println("nickname");
		System.out.println("file");
		System.out.println("profileDescription");
		System.out.println("bannerImage");
		
		ProfileDTO pdto = new ProfileDTO(profileImage,profileDescription,bannerImage);
		ProfileDAO pdao = new ProfileDAO();
		
		int cnt = pdao.updateProfile(pdto);
		 
		if(cnt>0) {
			System.out.println("프로필 변경 성공");
		}else {
			System.out.println("프로필 변경 실패");
		}
		
		response.sendRedirect("../Seller/MychannelMain.jsp");
		
		
		
	}

}
