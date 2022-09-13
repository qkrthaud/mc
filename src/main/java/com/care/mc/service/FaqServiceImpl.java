package com.care.mc.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.mc.dto.FaqDTO;
import com.care.mc.mybatis.FaqMapper;
@Service
public class FaqServiceImpl implements FaqService {
	@Autowired
	FaqMapper mapper;
	public void faqList(Model model,String ch,String se){
		System.out.println("ch : "+ch);
		ArrayList<FaqDTO> list= new ArrayList<FaqDTO>();
		if(ch.equals("전체") && se.equals("없음")) {
			System.out.println("1번 실행");
			list=mapper.allList();
		}else if(ch.equals("전체")) {
			System.out.println("2번 실행");
			se="%"+se+"%";
			list=mapper.allSearch(se,se);
		}else if(se.equals("없음")) {
			System.out.println("3번 실행");
			list=mapper.choList(ch);
		}else {
			System.out.println("4번 실행");
			se="%"+se+"%";
			list=mapper.choSearch(ch,se,se);
		}

		System.out.println("list:"+list.size());
		model.addAttribute("list",list);
	}
	public ArrayList<FaqDTO> choice(String ch){
		ArrayList<FaqDTO> list = mapper.choList(ch);
		return list;
	}

}
