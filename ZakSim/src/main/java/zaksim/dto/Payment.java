package zaksim.dto;

import java.util.Date;

public class Payment {
	
	private int pRnum;
	
	// 아임포트 인덱스
	private String impUid;
	// 결제 인덱스
	private String merchantUid;
	// 회원 인덱스
	private int buyerIdx;
	// 도전 인덱스
	private int challengeIdx;
	// 금액
	private int price;
	// 결제 시각
	private Date paidAt;
	// 상태
	private String status;
	// 결제 방법
	private String paymentOption;
	// 인증률
	private int certificationRate;	
	

	private ZakSimMember zakSimMember;
	private Challenge challenge;

	
	
	public int getCertificationRate() {
		return certificationRate;
	}

	public void setCertificationRate(int certificationRate) {
		this.certificationRate = certificationRate;
	}
	
	public Challenge getChallenge() {
		return challenge;
	}

	public void setChallenge(Challenge challenge) {
		this.challenge = challenge;
	}

	public int getpRnum() {
		return pRnum;
	}

	public void setPrnum(int pRnum) {
		this.pRnum = pRnum;
	}
	
	public String getImpUid() {
		return impUid;
	}

	public void setImpUid(String impUid) {
		this.impUid = impUid;
	}

	public String getMerchantUid() {
		return merchantUid;
	}

	public void setMerchantUid(String merchantUid) {
		this.merchantUid = merchantUid;
	}

	public int getBuyerIdx() {
		return buyerIdx;
	}

	public void setBuyerIdx(int buyerIdx) {
		this.buyerIdx = buyerIdx;
	}

	public int getChallengeIdx() {
		return challengeIdx;
	}

	public void setChallengeIdx(int challengeIdx) {
		this.challengeIdx = challengeIdx;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getPaidAt() {
		return paidAt;
	}

	public void setPaidAt(Date paidAt) {
		this.paidAt = paidAt;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPaymentOption() {
		return paymentOption;
	}

	public void setPaymentOption(String paymentOption) {
		this.paymentOption = paymentOption;
	}

	public ZakSimMember getZakSimMember() {
		return zakSimMember;
	}
 
	public void setZakSimMember(ZakSimMember zakSimMember) {
		this.zakSimMember = zakSimMember;
	}

	@Override
	public String toString() {
		return "Payment [pRnum=" + pRnum + ", impUid=" + impUid + ", merchantUid=" + merchantUid + ", buyerIdx="
				+ buyerIdx + ", challengeIdx=" + challengeIdx + ", price=" + price + ", paidAt=" + paidAt + ", status="
				+ status + ", paymentOption=" + paymentOption + ", certificationRate=" + certificationRate 
				+ ", zakSimMember=" + zakSimMember + ", challenge="	+ challenge + "]";
	}
	
}
