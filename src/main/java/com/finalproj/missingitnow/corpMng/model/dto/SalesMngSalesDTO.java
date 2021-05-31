package com.finalproj.missingitnow.corpMng.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class SalesMngSalesDTO implements Serializable {
	
	private static final long serialVersionUID = 2388982015907983216L;
	
	private String salesNo;
	private String corpNo;
	private CorpUserDTO corpUser;
	private String orderNo;
	private SalesMngOrderDTO salesMngOrder;
	private String prodNo;
	private ProdMngProductDTO prodMngProduct;
	private Date salesDate;
	private int salesQuantity;
	private int salesAmt;
	private Date startDate;
	private Date endDate;
	private int totalSales;			// 예상 정산금 조회를 위한 필드변수
	private int commissionBySales;	// 예상 정산금 조회를 위한 필드변수
	private int settlementAmt;		// 예상 정산금 조회를 위한 필드변수
	
	public SalesMngSalesDTO() {
	}

	public SalesMngSalesDTO(String salesNo, String corpNo, CorpUserDTO corpUser, String orderNo,
			SalesMngOrderDTO salesMngOrder, String prodNo, ProdMngProductDTO prodMngProduct, Date salesDate,
			int salesQuantity, int salesAmt, Date startDate, Date endDate, int totalSales, int commissionBySales,
			int settlementAmt) {
		this.salesNo = salesNo;
		this.corpNo = corpNo;
		this.corpUser = corpUser;
		this.orderNo = orderNo;
		this.salesMngOrder = salesMngOrder;
		this.prodNo = prodNo;
		this.prodMngProduct = prodMngProduct;
		this.salesDate = salesDate;
		this.salesQuantity = salesQuantity;
		this.salesAmt = salesAmt;
		this.startDate = startDate;
		this.endDate = endDate;
		this.totalSales = totalSales;
		this.commissionBySales = commissionBySales;
		this.settlementAmt = settlementAmt;
	}

	public String getSalesNo() {
		return salesNo;
	}

	public void setSalesNo(String salesNo) {
		this.salesNo = salesNo;
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

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public SalesMngOrderDTO getSalesMngOrder() {
		return salesMngOrder;
	}

	public void setSalesMngOrder(SalesMngOrderDTO salesMngOrder) {
		this.salesMngOrder = salesMngOrder;
	}

	public String getProdNo() {
		return prodNo;
	}

	public void setProdNo(String prodNo) {
		this.prodNo = prodNo;
	}

	public ProdMngProductDTO getProdMngProduct() {
		return prodMngProduct;
	}

	public void setProdMngProduct(ProdMngProductDTO prodMngProduct) {
		this.prodMngProduct = prodMngProduct;
	}

	public Date getSalesDate() {
		return salesDate;
	}

	public void setSalesDate(Date salesDate) {
		this.salesDate = salesDate;
	}

	public int getSalesQuantity() {
		return salesQuantity;
	}

	public void setSalesQuantity(int salesQuantity) {
		this.salesQuantity = salesQuantity;
	}

	public int getSalesAmt() {
		return salesAmt;
	}

	public void setSalesAmt(int salesAmt) {
		this.salesAmt = salesAmt;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
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

	@Override
	public String toString() {
		return "SalesMngSalesDTO [salesNo=" + salesNo + ", corpNo=" + corpNo + ", corpUser=" + corpUser + ", orderNo="
				+ orderNo + ", salesMngOrder=" + salesMngOrder + ", prodNo=" + prodNo + ", prodMngProduct="
				+ prodMngProduct + ", salesDate=" + salesDate + ", salesQuantity=" + salesQuantity + ", salesAmt="
				+ salesAmt + ", startDate=" + startDate + ", endDate=" + endDate + ", totalSales=" + totalSales
				+ ", commissionBySales=" + commissionBySales + ", settlementAmt=" + settlementAmt + "]";
	}

	
	
}
