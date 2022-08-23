package board.vo;

import java.sql.Timestamp;

public class Gallery {
	private int idx;
	private String title;
	private Timestamp wdate;
	private String filenames;
	
	
	public Gallery() {
		// TODO Auto-generated constructor stub
	}
	public Gallery(int idx, String title, Timestamp wdate, String filenames) {
		super();
		this.idx = idx;
		this.title = title;
		this.wdate = wdate;
		this.filenames = filenames;
	}
	public int getIdx() {
		return idx;
	}
	public String getTitle() {
		return title;
	}
	public Timestamp getWdate() {
		return wdate;
	}
	public String getFilenames() {
		return filenames;
	}
	
	
}
