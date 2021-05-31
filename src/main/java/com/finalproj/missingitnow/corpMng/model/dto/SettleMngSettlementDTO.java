package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class SettleMngSettlementDTO implements Serializable {
	
	private static final long serialVersionUID = -4967665052621533087L;
	
	private String settlementNo;
	private String corpNo;
	private CorpUserDTO corpUser;
	private String salesNo;
	private SalesMngSalesDTO sales;
	private Date settlementStartDate;		// 정산 요청 시작 일자
	private Date settlementEndDate;			// 정산 요청 종료 일자
	private int totalSales;
	private int commissionBySales;
	private int settlementAmt;
	private Date settlementDate;			// 정산 요청을 한 일자
	private String settlementChk;
	private Date lastEndDate;
	
	public SettleMngSettlementDTO() {
	}

	public SettleMngSettlementDTO(String settlementNo, String corpNo, CorpUserDTO corpUser, String salesNo,
			SalesMngSalesDTO sales, Date settlementStartDate, Date settlementEndDate, int totalSales,
			int commissionBySales, int settlementAmt, Date settlementDate, String settlementChk, Date lastEndDate) {
		this.settlementNo = settlementNo;
		this.corpNo = corpNo;
		this.corpUser = corpUser;
		this.salesNo = salesNo;
		this.sales = sales;
		this.settlementStartDate = settlementStartDate;
		this.settlementEndDate = settlementEndDate;
		this.totalSales = totalSales;
		this.commissionBySales = commissionBySales;
		this.settlementAmt = settlementAmt;
		this.settlementDate = settlementDate;
		this.settlementChk = settlementChk;
		this.lastEndDate = lastEndDate;
	}

	public String getSettlementNo() {
		return settlementNo;
	}

	public void setSettlementNo(String settlementNo) {
		this.settlementNo = settlementNo;
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

	public String getSalesNo() {
		return salesNo;
	}

	public void setSalesNo(String salesNo) {
		this.salesNo = salesNo;
	}

	public SalesMngSalesDTO getSales() {
		return sales;
	}

	public void setSales(SalesMngSalesDTO sales) {
		this.sales = sales;
	}

	public Date getSettlementStartDate() {
		return settlementStartDate;
	}

	public void setSettlementStartDate(Date settlementStartDate) {
		this.settlementStartDate = settlementStartDate;
	}

	public Date getSettlementEndDate() {
		return settlementEndDate;
	}

	public void setSettlementEndDate(Date settlementEndDate) {
		this.settlementEndDate = settlementEndDate;
	}

	public int getTotalSales() {
		return totalSales;
	}

	public void setTotalSales(int totalSales) {
		this.totalSales = totalSales;
	}

	public int getCommissionBySales() {
		return commissionBySales;
	}

	public void setCommissionBySales(int commissionBySales) {
		this.commissionBySales = commissionBySales;
	}

	public int getSettlementAmt() {
		return settlementAmt;
	}

	public void setSettlementAmt(int settlementAmt) {
		this.settlementAmt = settlementAmt;
	}

	public Date getSettlementDate() {
		return settlementDate;
	}

	public void setSettlementDate(Date settlementDate) {
		this.settlementDate = settlementDate;
	}

	public String getSettlementChk() {
		return settlementChk;
	}

	public void setSettlementChk(String settlementChk) {
		this.settlementChk = settlementChk;
	}

	public Date getLastEndDate() {
		return lastEndDate;
	}

	public void setLastEndDate(Date lastEndDate) {
		this.lastEndDate = lastEndDate;
	}

	@Override
	public String toString() {
		return "SettleMngSettlementDTO [settlementNo=" + settlementNo + ", corpNo=" + corpNo + ", corpUser=" + corpUser
				+ ", salesNo=" + salesNo + ", sales=" + sales + ", settlementStartDate=" + settlementStartDate
				+ ", settlementEndDate=" + settlementEndDate + ", totalSales=" + totalSales + ", commissionBySales="
				+ commissionBySales + ", settlementAmt=" + settlementAmt + ", settlementDate=" + settlementDate
				+ ", settlementChk=" + settlementChk + ", lastEndDate=" + lastEndDate + "]";
	}

	
	
	
}
