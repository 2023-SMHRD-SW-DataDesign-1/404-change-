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

	private int feed_no;
	@NonNull private String nickname;
	@NonNull private String feed_image1;
	 private String feed_image2;
	 private String feed_image3;
	 private String feed_image4;
	private String feed_image5;
	private String feed_image6;
	private String feed_image7;
	private String feed_image8;
	private String feed_image9;
	private String feed_image10;
    private String[] feedVideos = new String[3];
    @NonNull private String text;
    private int likes;
    private String time;

	
    public FeedDTO(int feedNo, String nickname, int likes) {
        super();
        this.feed_no = feedNo;
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
		this.feed_no = feedNo;
		this.text = text;
	}
    
     
     
}
