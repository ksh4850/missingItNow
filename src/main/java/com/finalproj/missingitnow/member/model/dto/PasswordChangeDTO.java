package com.finalproj.missingitnow.member.model.dto;

public class PasswordChangeDTO {
	
	private String userId;
	private String currentPassword;
	private String newPassword;
	private String newPasswordRetype;
	
	public PasswordChangeDTO() {
		super();
	}

	public PasswordChangeDTO(String userId, String currentPassword, String newPassword, String newPasswordRetype) {
		super();
		this.userId = userId;
		this.currentPassword = currentPassword;
		this.newPassword = newPassword;
		this.newPasswordRetype = newPasswordRetype;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCurrentPassword() {
		return currentPassword;
	}

	public void setCurrentPassword(String currentPassword) {
		this.currentPassword = currentPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getNewPasswordRetype() {
		return newPasswordRetype;
	}

	public void setNewPasswordRetype(String newPasswordRetype) {
		this.newPasswordRetype = newPasswordRetype;
	}

	@Override
	public String toString() {
		return "PasswordChangeDTO [userId=" + userId + ", currentPassword=" + currentPassword + ", newPassword="
				+ newPassword + ", newPasswordRetype=" + newPasswordRetype + "]";
	}
	

	
	
}
