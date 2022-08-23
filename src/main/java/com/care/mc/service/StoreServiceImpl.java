package com.care.mc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.mc.dto.StoreDTO;
import com.care.mc.mybatis.StoreMapper;

@Service
public class StoreServiceImpl implements StoreService{
	@Autowired
	StoreMapper mapper;
	public void search(String sear,Model model,int num){
		int paging = 5;
		
		int end=num*paging;
		int start=end+1-paging;
		String search="%"+sear+"%";
		ArrayList<StoreDTO> list = mapper.search(search,search,search,start,end);
		System.out.println("impl list : "+list.size());
		int Count = mapper.listCount(search,search,search);
		int repeat = Count/paging;
		if(Count % paging !=0) {
			repeat+=1;
		}
		model.addAttribute("list",list);
		model.addAttribute("repeat",repeat);
		model.addAttribute("sear",sear);
		model.addAttribute("num",num);
		
		
		
	}

}
