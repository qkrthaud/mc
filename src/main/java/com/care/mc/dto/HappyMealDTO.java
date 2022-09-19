package com.care.mc.dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class HappyMealDTO {
	private String mainImg, contentImg, title, status, wdate, contentStyle;
	private int writeNo, view;

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	public String getContentImg() {
		return contentImg;
	}

	public void setContentImg(String contentImg) {
		this.contentImg = contentImg;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(Timestamp wdate) {
		SimpleDateFormat simpl = new SimpleDateFormat("yyyy-MM-dd");
		this.wdate = simpl.format(wdate);
	}

	public String getContentStyle() {
		return contentStyle;
	}

	public void setContentStyle(String contentStyle) {
		this.contentStyle = contentStyle;
	}

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
}
