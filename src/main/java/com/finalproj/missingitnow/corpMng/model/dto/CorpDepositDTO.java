package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class CorpDepositDTO implements Serializable {
	
	private static final long serialVersionUID = -664072374340294911L;
	
	private String depositNo;
	private String corpNo;
	private CorpUserDTO corpUser;
	private String depositSort;
	private int amount;
	private Date depositDate;
	private String depositDetails;
	
	public CorpDepositDTO() {
	}

	public CorpDepositDTO(String depositNo, String corpNo, CorpUserDTO corpUser, String depositSort, int amount,
			Date depositDate, String depositDetails) {
		this.depositNo = depositNo;
		this.corpNo = corpNo;
		this.corpUser = corpUser;
		this.depositSort = depositSort;
		this.amount = amount;
		this.depositDate = depositDate;
		this.depositDetails = depositDetails;
	}

	public String getDepositNo() {
		return depositNo;
	}

	public void setDepositNo(String depositNo) {
		this.depositNo = depositNo;
	}

	public String getCorpNo() {
		return corpNo;
	}

	public void setCorpNo(String corpNo) {
		this.corpNo = corpNo;
	}

	public CorpUserDTO getCorpUser() {
		return corpUser;
	}

	public void setCorpUser(CorpUserDTO corpUser) {
		this.corpUser = corpUser;
	}

	public String getDepositSort() {
		return depositSort;
	}

	public void setDepositSort(String depositSort) {
		this.depositSort = depositSort;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public Date getDepositDate() {
		return depositDate;
	}

	public void setDepositDate(Date depositDate) {
		this.depositDate = depositDate;
	}

	public String getDepositDetails() {
		return depositDetails;
	}

	public void setDepositDetails(String depositDetails) {
		this.depositDetails = depositDetails;
	}

	@Override
	public String toString() {
		return "CorpDepositDTO [depositNo=" + depositNo + ", corpNo=" + corpNo + ", corpUser=" + corpUser
				+ ", depositSort=" + depositSort + ", amount=" + amount + ", depositDate=" + depositDate
				+ ", depositDetails=" + depositDetails + "]";
	}
	
	
}
