package com.care.mc.service;

import org.springframework.ui.Model;

public interface MainService {

	public void getBoard(Model model);

	public void getDetail(int writeNo, Model model);

	public void getMain(Model model);

	public void getHappymeal(Model model);

	public void getHappymealDetail(int writeNo, Model model);

}
