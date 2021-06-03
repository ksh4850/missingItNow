package com.finalproj.missingitnow.corpMng.model.dto;

public class CorpUserImgDTO {
	
	private String corpImgNo;
	private String corpNo;
	private String corpImgOriginName;
	private String corpImgRename;
	private String corpImgThnName;
	private String corpImgPath;
	
	public CorpUserImgDTO() {
	}

	public CorpUserImgDTO(String corpImgNo, String corpNo, String corpImgOriginName, String corpImgRename,
			String corpImgThnName, String corpImgPath) {
		this.corpImgNo = corpImgNo;
		this.corpNo = corpNo;
		this.corpImgOriginName = corpImgOriginName;
		this.corpImgRename = corpImgRename;
		this.corpImgThnName = corpImgThnName;
		this.corpImgPath = corpImgPath;
	}

	public String getCorpImgNo() {
		return corpImgNo;
	}

	public void setCorpImgNo(String corpImgNo) {
		this.corpImgNo = corpImgNo;
	}

	public String getCorpNo() {
		return corpNo;
	}

	public void setCorpNo(String corpNo) {
		this.corpNo = corpNo;
	}

	public String getCorpImgOriginName() {
		return corpImgOriginName;
	}

	public void setCorpImgOriginName(String corpImgOriginName) {
		this.corpImgOriginName = corpImgOriginName;
	}

	public String getCorpImgRename() {
		return corpImgRename;
	}

	public void setCorpImgRename(String corpImgRename) {
		this.corpImgRename = corpImgRename;
	}

	public String getCorpImgThnName() {
		return corpImgThnName;
	}

	public void setCorpImgThnName(String corpImgThnName) {
		this.corpImgThnName = corpImgThnName;
	}

	public String getCorpImgPath() {
		return corpImgPath;
	}

	public void setCorpImgPath(String corpImgPath) {
		this.corpImgPath = corpImgPath;
	}

	@Override
	public String toString() {
		return "CorpUserImgDTO [corpImgNo=" + corpImgNo + ", corpNo=" + corpNo + ", corpImgOriginName="
				+ corpImgOriginName + ", corpImgRename=" + corpImgRename + ", corpImgThnName=" + corpImgThnName
				+ ", corpImgPath=" + corpImgPath + "]";
	}
	
	
}	
