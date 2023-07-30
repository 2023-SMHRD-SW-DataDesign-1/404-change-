package com.smhrd.modelDTO;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NoticeDTO {
	   private int notice_no;
	    private int feed_no;
	    private String nickname;
	    private String text;
	    private String time;
	    private String title;
	    
	    
	    
	    public NoticeDTO(String nickname, String text,String time , String title) {
			super();
			this.nickname = nickname;
			this.text = text;
			this.time = time;
			this.title = title;
		}
	    
	    
		public NoticeDTO(String nickname) {
			super();
			this.nickname = nickname;
		}
	    
	    
		public NoticeDTO(int noticeNo) {
			super();
			this.notice_no = notice_no;
		}
	    
	    
	}

