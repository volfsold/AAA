package zaksim.dto;

import java.util.Date;

public class Comment {

	 // 인덱스 
    private int idx;

    // 작성자 인덱스 
    private int writerIdx;

    // 내용 
    private String content;

    // 게시글 인덱스 
    private int boardIdx;

    // 작성 날짜 
    private Date writtenDate;

    // 깊이 
    private int depth;

    // 상위 댓글 인덱스 
    private int upperIdx;

    public int getIdx() {
        return idx;
    }

    public void setIdx(int idx) {
        this.idx = idx;
    }

    public int getWriterIdx() {
        return writerIdx;
    }

    public void setWriterIdx(int writerIdx) {
        this.writerIdx = writerIdx;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getBoardIdx() {
        return boardIdx;
    }

    public void setBoardIdx(int boardIdx) {
        this.boardIdx = boardIdx;
    }

    public Date getWrittenDate() {
        return writtenDate;
    }

    public void setWrittenDate(Date writtenDate) {
        this.writtenDate = writtenDate;
    }

    public int getDepth() {
        return depth;
    }

    public void setDepth(int depth) {
        this.depth = depth;
    }

    public int getUpperIdx() {
        return upperIdx;
    }

    public void setUpperIdx(int upperIdx) {
        this.upperIdx = upperIdx;
    }

	@Override
	public String toString() {
		return "Comment [idx=" + idx + ", writerIdx=" + writerIdx + ", content=" + content + ", boardIdx="
				+ boardIdx + ", writtenDate=" + writtenDate + ", depth=" + depth + ", upperIdx=" + upperIdx + "]";
	}
	
}
