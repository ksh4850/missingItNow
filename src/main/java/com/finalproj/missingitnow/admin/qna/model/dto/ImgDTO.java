package com.finalproj.missingitnow.admin.qna.model.dto;

public class ImgDTO {

	private String no;
	private String postNo;
	private String originName;
	private String rename;
	private String thnName;
	private String path;
	
	public ImgDTO() {}
	public ImgDTO(String no, String postNo, String originName, String rename, String thnName, String path) {
		this.no = no;
		this.postNo = postNo;
		this.originName = originName;
		this.rename = rename;
		this.thnName = thnName;
		this.path = path;
	}
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
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
	public String getRename() {
		return rename;
	}
	public void setRename(String rename) {
		this.rename = rename;
	}
	public String getThnName() {
		return thnName;
	}
	public void setThnName(String thnName) {
		this.thnName = thnName;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	@Override
	public String toString() {
		return "ImgDTO [no=" + no + ", postNo=" + postNo + ", originName=" + originName + ", rename=" + rename
				+ ", thnName=" + thnName + ", path=" + path + "]";
	} 
	
}
