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
public class MemberDTO {

	// DTO에 들어갈 목록
// 회원가입 정보, 카테고리, 상품, 
	// 기본형 (회원가입에 쓰임)
	@NonNull private String member_id;
	@NonNull private String password;
	private String newpassword;
	private String nickname;
	private String gender;
	private int age; 
	private String address;      
	private String phone;
	

	
	public MemberDTO(@NonNull String member_id, @NonNull String password, String nickname, int age, String address,
			String phone_number) {
		super();
		this.member_id = member_id;
		this.password = password;
		this.nickname = nickname;
		this.age = age;
		this.address = address;
		this.phone = phone;
	}
	//회원정보수정
public MemberDTO (@NonNull String member_id , @NonNull String password, String address,
		String phone_number) {
	super();
	this.password = password;
	this.member_id = member_id;
	this.address = address;
	this.phone = phone;
}
	//회원가입
	public MemberDTO(@NonNull String member_id, @NonNull String password, String nickname, String gender, int age,
			String address, String phone_number) {
		super();
		this.member_id = member_id;
		this.password = password;
		this.nickname = nickname;
		this.gender = gender;
		this.age = age;
		this.address = address;
		this.phone = phone;
	}
	public MemberDTO(@NonNull String member_id, @NonNull String password, String nickname, String address,
			String phone) {
		super();
		this.member_id = member_id;
		this.password = password;
		this.nickname = nickname;
		this.address = address;
		this.phone = phone;
	}
	
	

}// CLASS
