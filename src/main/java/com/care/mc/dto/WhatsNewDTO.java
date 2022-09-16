package com.care.mc.dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class WhatsNewDTO {
	private int writeNo, view;
	private String title, content, wdate;

	public int getWriteNo() {
		return writeNo;
	}

	public void setWriteNo(int writeNo) {
		this.writeNo = writeNo;
	}

	public int getView() {
		return view;
	}

	public void setView(int view) {
		this.view = view;
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

	public String getWdate() {
		return wdate;
	}

	public void setWdate(Timestamp wdate) {
		SimpleDateFormat simpl = new SimpleDateFormat("yyyy-MM-dd");
		this.wdate = simpl.format(wdate);
	}
}
