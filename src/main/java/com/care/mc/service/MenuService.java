package com.care.mc.service;

import org.springframework.ui.Model;

public interface MenuService {
	public void list(String size, Model model);
	public void detail(String engName, Model model);
}
