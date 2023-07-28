package com.smhrd.modelDTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
public class FeedDTO {

	private int feedNo;
	@NonNull private String nickname;
	@NonNull private String feedImages;
    private String[] feedVideos = new String[3];
    @NonNull private String text;
    private int likes;
    private String time;

	
    public FeedDTO(int feedNo, String nickname, int likes) {
        super();
        this.feedNo = feedNo;
        this.nickname = nickname;
        this.feedVideos = feedVideos;
        this.likes = likes;
     }
      
     public FeedDTO(int likes) {
        super();
        this.likes = likes;
     }

     public FeedDTO(String nickname) {
        super();
        this.nickname = nickname;
     }

	public FeedDTO(int feedNo, String text) {
		super();
		this.feedNo = feedNo;
		this.text = text;
	}
    
     
     
}
