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

	private int comment_no;
	@NonNull private int feed_no;
	@NonNull private String profileImage;
	@NonNull private String nickname;
	@NonNull private String text;
	private int likes;
	private String time;
	    
	public FeedCommentDTO(int feed_no,String profileImage,String nickname, String text,int likes) {
		super();
		this.feed_no = feed_no;
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

	public FeedCommentDTO(int feed_no, String nickname, String text, int likes) {
		super();
		this.feed_no = feed_no;
		this.nickname = nickname;
		this.text = text;
		this.likes = likes;
	}
	
	
	
		
}
