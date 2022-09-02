package com.care.mc.service;

import java.util.Map;

import org.springframework.ui.Model;

public interface MenuService {
	public void list(String value,int page, Model model);
	public void detail(String engName, Model model);
	public Map<Object, Object> menuList(String value,int page);
}
