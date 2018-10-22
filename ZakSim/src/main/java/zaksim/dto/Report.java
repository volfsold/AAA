package zaksim.dto;

import java.util.Date;

public class Report {
	
	private int idx;
	private int boardIdx;
	private int commentIdx;
	private int reporterIdx;
	private String category;
	private String reason;
	private int memberIdx;
	private Date reportDate;
	
	private Board board;
	
	private Comment comment;
	
	private ZakSimMember reporterMember;
	private ZakSimMember zakSimMember;
	
	
	
	public int getIdx() {
		return idx;
	}
	
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	public int getBoardIdx() {
		return boardIdx;
	}
	
	public void setBoardIdx(int boardIdx) {
		this.boardIdx = boardIdx;
	}
	
	public int getCommentIdx() {
		return commentIdx;
	}
	
	public void setCommentIdx(int commentIdx) {
		this.commentIdx = commentIdx;
	}
	
	public int getReporterIdx() {
		return reporterIdx;
	}
	
	public void setReporterIdx(int reporterIdx) {
		this.reporterIdx = reporterIdx;
	}
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getReason() {
		return reason;
	}
	
	public void setReason(String reason) {
		this.reason = reason;
	}
	
	public int getMemberIdx() {
		return memberIdx;
	}
	
	public void setMemberIdx(int memberIdx) {
		this.memberIdx = memberIdx;
	}
	
	public Date getReportDate() {
		return reportDate;
	}
	
	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}
	
	public Board getBoard() {
		return board;
	}
	
	public void setBoard(Board board) {
		this.board = board;
	}
	
	public Comment getComment() {
		return comment;
	}
	
	public void setComment(Comment comment) {
		this.comment = comment;
	}
	
	public ZakSimMember getReporterMember() {
		return reporterMember;
	}
	
	public void setReporterMember(ZakSimMember reporterMember) {
		this.reporterMember = reporterMember;
	}
	
	public ZakSimMember getZakSimMember() {
		return zakSimMember;
	}
	
	public void setZakSimMember(ZakSimMember zakSimMember) {
		this.zakSimMember = zakSimMember;
	}
	
	@Override
	public String toString() {
		return "Report [idx=" + idx + ", boardIdx=" + boardIdx + ", commentIdx=" + commentIdx + ", reporterIdx="
				+ reporterIdx + ", category=" + category + ", reason=" + reason + ", memberIdx=" + memberIdx
				+ ", reportDate=" + reportDate + ", board=" + board + ", comment=" + comment + ", reporterMember="
				+ reporterMember + ", zakSimMember=" + zakSimMember + "]";
	}
}
