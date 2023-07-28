package com.smhrd.modelDTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

public class FeedCommentDTO {

	

	@Getter
	@Setter
	@AllArgsConstructor
	@ToString
	public class FeedCommentDTO1 {

		private int commentNo;
		@NonNull private int feedNo;
		@NonNull private String profileImage;
		@NonNull private String nickname;
		@NonNull private String text;
		private int likes;
	    private String time;
	    
	    public FeedCommentDTO1(int feedNo,String profileImage,String nickname, String text,int likes) {
			super();
			this.feedNo = feedNo;
			this.profileImage= profileImage;
			this.nickname= nickname;
			this.likes = likes;
			this.text = text;
		}
		
	}



	
}
