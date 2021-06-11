package com.finalproj.missingitnow.communty.model.dto;

public class SPostImgDTO {
	
	private String imgNo;
	private String postNo;
	private String originName;
	private String reName;
	private String thnbName;
	private String path;
	
	public SPostImgDTO() {
		
	}

	public SPostImgDTO(String imgNo, String postNo, String originName, String reName, String thnbName, String path) {
		super();
		this.imgNo = imgNo;
		this.postNo = postNo;
		this.originName = originName;
		this.reName = reName;
		this.thnbName = thnbName;
		this.path = path;
	}

	public String getImgNo() {
		return imgNo;
	}

	public void setImgNo(String imgNo) {
		this.imgNo = imgNo;
	}

	public String getPostNo() {
		return postNo;
	}

	public void setPostNo(String postNo) {
		this.postNo = postNo;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getReName() {
		return reName;
	}

	public void setReName(String reName) {
		this.reName = reName;
	}

	public String getThnbName() {
		return thnbName;
	}

	public void setThnbName(String thnbName) {
		this.thnbName = thnbName;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	@Override
	public String toString() {
		return "SPostImgDTO [imgNo=" + imgNo + ", postNo=" + postNo + ", originName=" + originName + ", reName="
				+ reName + ", thnbName=" + thnbName + ", path=" + path + "]";
	}

	
	

}
