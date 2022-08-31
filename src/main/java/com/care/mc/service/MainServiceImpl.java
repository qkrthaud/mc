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
}
