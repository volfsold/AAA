package zaksim.dto;

public class VirtualAccount {

	// 인덱스
	private int idx;
	// 결제 인덱스
	private String paymentIdx;
	// 은행
	private String bank;
	// 결제계좌
	private String account;
	
	
	@Override
	public String toString() {
		return "VirtualAccount [idx=" + idx + ", paymentIdx=" + paymentIdx + ", bank=" + bank + ", account=" + account
				+ "]";
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public String getPaymentIdx() {
		return paymentIdx;
	}


	public void setPaymentIdx(String paymentIdx) {
		this.paymentIdx = paymentIdx;
	}


	public String getBank() {
		return bank;
	}


	public void setBank(String bank) {
		this.bank = bank;
	}


	public String getAccount() {
		return account;
	}


	public void setAccount(String account) {
		this.account = account;
	}
	
	
	
	
}
