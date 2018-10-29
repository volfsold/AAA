package zaksim.dto;

import java.util.Date;

//게시글 
public class Board {

	// 인덱스 
	private int idx;

	// 개인 도전 인덱스 
	private int challengeIdx;

	// 그룹 인덱스 
	private int gruopIdx;

	// 작성자 인덱스 
	private int writerIdx;

	// 타이틀 
	private String title;

	// 내용 
	private String content;

	// 이미지 
	private String image;

	// 비밀글 여부 1(비공개)/0(공개)
	private int secret;

	// 인증글 여부 1(인증글)/0(일반글)
	private int certification;

	// 작성 날짜 
	private Date writtenDate;

	// 조회수 
	private int hit;

	// 댓글 & 대댓글
	private Comment comment;

	// 댓글 좋아요
	private BoardLike boardLike; 

	// 신고
	private Report report;


	@Override
	public String toString() {
		return "Board [idx=" + idx + ", challengeIdx=" + challengeIdx + ", gruopIdx=" + gruopIdx + ", writerIdx="
				+ writerIdx + ", title=" + title + ", content=" + content + ", image=" + image + ", secret=" + secret
				+ ", certification=" + certification + ", writtenDate=" + writtenDate + ", hit=" + hit
				+ ", comment=" +comment + ", boardLike=" + boardLike + ", report=" + report + "]";
	}

	public Report getReport() {
		return report;
	}

	public void setReport(Report report) {
		this.report = report;
	}

	public BoardLike getBoardLike() {
		return boardLike;
	}

	public void setBoardLike(BoardLike boardLike) {
		this.boardLike = boardLike;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getChallengeIdx() {
		return challengeIdx;
	}

	public void setChallengeIdx(int challengeIdx) {
		this.challengeIdx = challengeIdx;
	}

	public int getGruopIdx() {
		return gruopIdx;
	}

	public void setGruopIdx(int gruopIdx) {
		this.gruopIdx = gruopIdx;
	}

	public int getWriterIdx() {
		return writerIdx;
	}

	public void setWriterIdx(int writerIdx) {
		this.writerIdx = writerIdx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getSecret() {
		return secret;
	}

	public void setPrivate(int secret) {
		this.secret = secret;
	}

	public int getCertification() {
		return certification;
	}

	public void setCertification(int certification) {
		this.certification = certification;
	}

	public Date getWrittenDate() {
		return writtenDate;
	}

	public void setWrittenDate(Date writtenDate) {
		this.writtenDate = writtenDate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public Comment getBoardComment() {
		return comment;
	}

	public void setBoardComment(Comment boardComment) {
		this.comment = boardComment;
	}

	public void setSecret(int secret) {
		this.secret = secret;
	}





}
