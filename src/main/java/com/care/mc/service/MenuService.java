package com.care.mc.service;

import org.springframework.ui.Model;

public interface MenuService {
	public void list(Model model);
	public void detail(String name, Model model);
}
