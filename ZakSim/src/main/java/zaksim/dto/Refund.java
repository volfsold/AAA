package zaksim.dto;

import java.util.Date;

public class Refund {
	
	private int rRnum;

	private String impUid;
	private Date applyDate;
	private String refundOption;
	private Date refundDate;
	
	private Payment payment;

	
	
	public int getrRnum() {
		return rRnum;
	}

	public void setrRnum(int rRnum) {
		this.rRnum = rRnum;
	}
	
	public String getImpUid() {
		return impUid;
	}

	public void setImpUid(String impUid) {
		this.impUid = impUid;
	}

	public Date getApplyDate() {
		return applyDate;
	}

	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}

	public String getRefundOption() {
		return refundOption;
	}

	public void setRefundOption(String refundOption) {
		this.refundOption = refundOption;
	}

	public Date getRefundDate() {
		return refundDate;
	}

	public void setRefundDate(Date refundDate) {
		this.refundDate = refundDate;
	}

	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}

	@Override
	public String toString() {
		return "Refund [rRnum=" + rRnum + ", impUid=" + impUid + ", applyDate=" + applyDate + ", refundOption="
				+ refundOption + ", refundDate=" + refundDate + ", payment=" + payment + "]";
	}

	
}
