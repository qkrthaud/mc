package com.care.mc.service;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.mc.dto.MenuInfoDTO;
import com.care.mc.dto.NutInfoDTO;
import com.care.mc.mybatis.MenuMapper;
import com.care.mc.mybatis.NutMapper;
@Service
public class MenuServiceImpl implements MenuService{
	@Autowired MenuMapper mm;
	@Autowired NutMapper nm;

	public void list(String value, Model model) {
		String val="%"+value+"%";
		String size="nan";
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("value", val);
		map.put("size", size);
		System.out.println("메뉴 : "+val);
		System.out.println("사이즈 :"+size);
		int page = 1;
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
		map.put("start", start);
		map.put("end", end);
		List<MenuInfoDTO> getList = mm.getList(map);
		model.addAttribute("getList", getList);
		model.addAttribute("value", value);
		model.addAttribute("pageNum", pageNum);
	}
	
	public Map<Object, Object> menuList(String value,int page) {
		String val="%"+value+"%";
		String size="nan";
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("value", val);
		map.put("size", size);
		int pageNum = page;
		int contentNum =6;
		int totalCount = mm.selectBoardCount(map);
		int totalPage = totalCount/contentNum;
		int seq =0;
		if( totalCount % contentNum != 0)
			totalPage += 1;
		System.out.println("총 페이지 수 : "+totalPage);
		System.out.println("현재 페이지  : "+pageNum);
		System.out.println("목록갯수 : "+totalCount);
		int end = pageNum * contentNum;
		int start = end + 1 - contentNum;
		map.put("start", start);
		map.put("end", end);
		System.out.println(start);
		System.out.println(end);

		List<MenuInfoDTO> getList = mm.getList(map);
		Map<Object, Object> menuList = new HashMap<Object, Object>();
		menuList.put("value", val);
		menuList.put("size", size);
		menuList.put("totalCount", totalCount);
		menuList.put("pageNum", pageNum);
		menuList.put("totalPage",totalPage);
		menuList.put("menuList", getList);
		return menuList;
	}
	public void detail(String seq ,String value,String page, Model model) {
		String val="%"+value+"%";
		String size="nan";
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("value", val);
		map.put("size", size);
		map.put("page", page);
		map.put("seq", seq);
		model.addAttribute("menuInfo", mm.menuInfo(map));
		model.addAttribute("value", value);
		//영문명으로 nut_Info테이블 검색
		MenuInfoDTO nut = mm.menuInfo(map);
		String engName = nut.getEngName();
		System.out.println(engName);
		model.addAttribute("nutInfo", nm.nutInfo(engName));
		//영양소 기준치 계산
		NutInfoDTO nutdto = nm.nutInfo(engName);
		int protein = nutdto.getProtein();
		int fat = nutdto.getSaturated_Fat();
		int natrium = nutdto.getNatrium();
		double pro_cal = (((double)protein/55) * 100);
		double fat_cal = (((double)fat/15) * 100);
		double nat_cal = (((double)natrium/2000) * 100);
		model.addAttribute("pro_cal",Math.round(pro_cal));
		model.addAttribute("fat_cal",Math.round(fat_cal));
		model.addAttribute("nat_cal",Math.round(nat_cal));
	}
	public void detailPaging(String value, String page, Model model) {
		String val="%"+value+"%";
		String size="nan";
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("value", val);
		map.put("size", size);
		map.put("page", page);
		model.addAttribute("menuInfo", mm.pagingInfo(map));
		model.addAttribute("value", value);
		MenuInfoDTO nut = mm.pagingInfo(map);
		String engName = nut.getEngName();
		System.out.println(engName);
		model.addAttribute("nutInfo", nm.nutInfo(engName));
		//영양소 기준치 계산
				NutInfoDTO nutdto = nm.nutInfo(engName);
				int protein = nutdto.getProtein();
				int fat = nutdto.getSaturated_Fat();
				int natrium = nutdto.getNatrium();
				double pro_cal = (((double)protein / 55) * 100);
				double fat_cal = (((double)fat / 15) * 100);
				double nat_cal = (((double)natrium / 2000) * 100);
				model.addAttribute("pro_cal",Math.round(pro_cal));
				model.addAttribute("fat_cal",Math.round(fat_cal));
				model.addAttribute("nat_cal",Math.round(nat_cal));
	}

}
