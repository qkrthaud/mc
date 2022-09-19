package com.care.mc.dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class NoticeDTO {
	private String notice, title, content, wdate;
	private int writeNo, view;

	public int getWriteNo() {
		return writeNo;
	}

	public void setWriteNo(int writeNo) {
		this.writeNo = writeNo;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
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

	public int getView() {
		return view;
	}

	public void setView(int view) {
		this.view = view;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(Timestamp wdate) {
		SimpleDateFormat simpl = new SimpleDateFormat("yyyy-MM-dd");
		this.wdate = simpl.format(wdate);
	}
}
