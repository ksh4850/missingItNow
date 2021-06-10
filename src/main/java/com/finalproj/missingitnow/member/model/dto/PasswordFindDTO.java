package com.finalproj.missingitnow.member.model.dto;

public class PasswordFindDTO {
	
	private String id;
	private String email;

	public PasswordFindDTO() {
		super();
	}
	
	public PasswordFindDTO(String id, String email) {
		super();
		this.id = id;
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "PasswordFindDTO [id=" + id + ", email=" + email + "]";
	}
	
	
	
}
