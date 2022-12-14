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
	public void search(String sear,Model model,int num,ArrayList<String> arr){
		int paging = 5;
		
		
		  int end=num*paging; 
		  int start=end-paging; 
		  String search="%"+sear+"%";
		  
			/*
			 * ArrayList<StoreDTO> list = mapper.search(search,search,search,start,end);
			 * System.out.println("impl list : "+list.size()); int Count =
			 * mapper.listCount(search,search,search);
			 */
		  ArrayList<StoreDTO> list = new ArrayList<StoreDTO>();
		  ArrayList<StoreDTO> chkList = mapper.chkSearch(search,search,search);
		  ArrayList<StoreDTO> resList = new ArrayList<StoreDTO>();
		  for(String s : arr) {
			  System.out.println("s : "+s);
		  }
		  for (StoreDTO dto : chkList) {
			  int result=1;
			  String[] str= dto.getService().split(",");
			  
			  ArrayList<String> strList = new ArrayList<String>();
			  for(String s : str) {
				  
				  strList.add(s);
			  }
			  for(String s : arr) {
				  if( strList.contains(s)) {
					  
				  }else {
					  result=0;
					  break;
				  }
			  }
			  if(result==1) {
				  resList.add(dto);
			  }
			  
		  }
		  int count = resList.size();
		  
		  int repeat = count/paging; 
		  if(count % paging !=0) { 
			  repeat+=1; 
			  }
		  if(resList.size()>end) {
			  for(int i=start;i<end;i++) {
				  
				  list.add(resList.get(i));
			  }
		  }else {
			  
			  for(int i=start;i<resList.size();i++) {
				  
				  list.add(resList.get(i));
			  }
		  }
		  int cns=0;
		if (num/10!=0) {
			cns=(num-1)/10*10+1;
		}else {
			cns=num/10*10+1;
			
		}
		int cnn=repeat/10*10+1;
		
		model.addAttribute("cns",cns);
		model.addAttribute("cnn",cnn);
		model.addAttribute("list",list);
		model.addAttribute("repeat",repeat);
		model.addAttribute("sear",sear);
		model.addAttribute("num",num);
		
		
		
	}
	public int searchAddr(String s) {
		String s1="%"+s+"%";
		int count=mapper.addrCount(s1,s1);
		return count;
	}
	public void getEventStore(Model model) {
		
		ArrayList<StoreDTO> eventList=mapper.getEventStore();
		System.out.println(eventList.size());
		model.addAttribute("eventList",eventList);
		
	}

}
