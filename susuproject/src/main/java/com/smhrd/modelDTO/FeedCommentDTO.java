package com.smhrd.modelDTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@ToString
public class FeedCommentDTO {

	private int commentNo;
	@NonNull private int feedNo;
	@NonNull private String profileImage;
	@NonNull private String nickname;
	@NonNull private String text;
	private int likes;
	private String time;
	    
	public FeedCommentDTO(int feedNo,String profileImage,String nickname, String text,int likes) {
		super();
		this.feedNo = feedNo;
		this.profileImage= profileImage;
		this.nickname= nickname;
		this.likes = likes;
		this.text = text;
	}
	
	public FeedCommentDTO(String profileImage, String nickname, String text) {
		super();
		this.profileImage = profileImage;
		this.nickname = nickname;
		this.text = text;
	}

	public FeedCommentDTO(int feedNo, String nickname, String text, int likes) {
		super();
		this.feedNo = feedNo;
		this.nickname = nickname;
		this.text = text;
		this.likes = likes;
	}
	
	
	
		
}
