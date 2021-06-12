package com.finalproj.missingitnow.member.model.dto;

public class PasswordInputDTO {
	
	private String userPwd;
	private String pwConfirm;
	
	
	
	
	
	public PasswordInputDTO() {
		super();
	}





	public PasswordInputDTO(String userPwd, String pwConfirm) {
		super();
		this.userPwd = userPwd;
		this.pwConfirm = pwConfirm;
	}





	public String getUserPwd() {
		return userPwd;
	}





	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}





	public String getPwConfirm() {
		return pwConfirm;
	}





	public void setPwConfirm(String pwConfirm) {
		this.pwConfirm = pwConfirm;
	}





	@Override
	public String toString() {
		return "PasswordInputDTO [userPwd=" + userPwd + ", pwConfirm=" + pwConfirm + "]";
	}
	
	
	
}
