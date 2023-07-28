package com.smhrd.modelDTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ProfileDTO {
	
	private String nickname;
	private String profileImage;
	private String profileDescription;
	private String bannerImage;
	
	public ProfileDTO(String profileImage, String profileDescription, String bannerImage) {
		super();
		this.profileImage = profileImage;
		this.profileDescription = profileDescription;
		this.bannerImage = bannerImage;
	}
	
	public ProfileDTO(String nickname) {
		super();
		this.nickname = nickname;
	}
}
	