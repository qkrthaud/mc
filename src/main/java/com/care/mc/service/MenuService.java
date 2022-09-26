package com.care.mc.service;

import java.util.Map;

import org.springframework.ui.Model;

public interface MenuService {
	public Map<Object, Object> menuList(String value,int page);
	public void detail(String seq, String value, String page, Model model);
	public void detailPaging(String value, String page, Model model);
	public void showSize(String seq, Model model);
}
