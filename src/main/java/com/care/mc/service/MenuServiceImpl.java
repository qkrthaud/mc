package com.care.mc.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.mc.dto.MenuInfoDTO;
import com.care.mc.mybatis.MenuMapper;
import com.care.mc.mybatis.NutMapper;
@Service
public class MenuServiceImpl implements MenuService{
	@Autowired MenuMapper mm;
	@Autowired NutMapper nm;

	public void list(String value,int page, Model model) {
		String val="%"+value+"%";
		String size="nan";
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("value", val);
		map.put("size", size);
		System.out.println("메뉴 : "+val);
		System.out.println("사이즈 :"+size);
		int pageNum = page;
		int contentNum =6;
		int totalCount = mm.selectBoardCount(map);
		int totalPage = totalCount/contentNum;
		if( totalCount % contentNum != 0)
			totalPage += 1;
		System.out.println(totalPage);
		System.out.println(pageNum);
		System.out.println(totalCount);
		int end = pageNum * contentNum;
		int start = end + 1 - contentNum;
		List<MenuInfoDTO> getList = mm.getList(start, end, map);
		model.addAttribute("getList", getList);
		model.addAttribute("value", value);
		model.addAttribute("pageNum", pageNum);
	}
	public void detail(String engName, Model model) {
		model.addAttribute("menuInfo", mm.menuInfo(engName));
		model.addAttribute("nutInfo", nm.nutInfo(engName));
	}
	public Map<Object, Object> menuList(String value,int page) {
		String val="%"+value+"%";
		String size="nan";
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("value", val);
		map.put("size", size);
		int pageNum = page;
		int contentNum =6;
		int totalCount = mm.selectBoardCount(map);
		int totalPage = totalCount/contentNum;
		if( totalCount % contentNum != 0)
			totalPage += 1;
		System.out.println("총 페이지 수 : "+totalPage);
		System.out.println("현재 페이지  : "+pageNum);
		System.out.println("목록갯수 : "+totalCount);
		int end = pageNum * contentNum;
		int start = end + 1 - contentNum;
		System.out.println(start);
		System.out.println(end);
		List<MenuInfoDTO> getList = mm.getList(start, end, map);
		Map<Object, Object> menuList = new HashMap<Object, Object>();
		menuList.put("value", val);
		menuList.put("size", size);
		menuList.put("pageNum", pageNum);
		menuList.put("totalPage",totalPage);
		menuList.put("menuList", getList);
		
		return menuList;
	}

}
