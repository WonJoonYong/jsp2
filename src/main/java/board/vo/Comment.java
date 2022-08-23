package board.vo;

import java.sql.Timestamp;

public class Comment {
	private int idx;
	private int mref;
	private String writer;
	private String content;
	private Timestamp wdate;
	private String ip;
	private int heart;
	
	
	
	public Comment(int idx, int mref, String writer, String content, Timestamp wdate, String ip, int heart) {
		this.idx = idx;
		this.mref = mref;
		this.writer = writer;
		this.content = content;
		this.wdate = wdate;
		this.ip = ip;
		this.heart = heart;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getMref() {
		return mref;
	}
	public void setMref(int mref) {
		this.mref = mref;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getWdate() {
		return wdate;
	}
	public void setWdate(Timestamp wdate) {
		this.wdate = wdate;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public int getHerat() {
		return heart;
	}
	public void setHerat(int herat) {
		this.heart = herat;
	}
	
	
}
