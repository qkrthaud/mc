package com.care.mc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import com.care.mc.mybatis.MainMapper;

@Service
public class MainServiceImpl implements MainService {
	@Autowired
	MainMapper mp;

	public void getBoard(Model model) {
		model.addAttribute("whatsnew_b", mp.getBoard());
	}

	public void getDetail(int writeNo, Model model) {
		System.out.println(mp.getDetail(writeNo).getaTag());
		model.addAttribute("details", mp.getDetail(writeNo));
	}

	public void getMain(Model model) {
		model.addAttribute("main_b", mp.getMainBoard());
		
	}

	public void getHappymeal(Model model) {
		model.addAttribute("happymeal_b", mp.getHappymeal());
	}

	public void getHappymealDetail(int writeNo, Model model) {
		model.addAttribute("details", mp.getHappymealDetail(writeNo));
	}
}
