package com.care.mc.service;

import org.springframework.ui.Model;

public interface MainService {

	public void getBoard(Model model);

	public void getDetail(int writeNo, Model model);

}
