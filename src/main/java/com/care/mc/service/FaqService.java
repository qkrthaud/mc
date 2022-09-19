package com.care.mc.service;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.care.mc.dto.FaqDTO;

public interface FaqService {
	public void faqList(Model model,String ch,String se);
	public ArrayList<FaqDTO> choice(String ch);

}
