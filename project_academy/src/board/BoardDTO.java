package board;

import java.sql.Date;

//	IDX        NOT NULL NUMBER        
//	MEMBER_IDX          NUMBER        
//	TITLE      NOT NULL VARCHAR2(200) 
//	WRITEDATE           DATE          
//	VIEWS               NUMBER        
//	CONTENTS   NOT NULL VARCHAR2(500) 

public class BoardDTO {
	private int idx;
	private int member_idx;
	private String boardType;	
	private String title;
	private Date writeDate;
	private int views;
	private String contents;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
}
