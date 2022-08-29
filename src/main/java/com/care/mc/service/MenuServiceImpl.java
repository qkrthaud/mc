package com.care.mc.service;

import java.util.HashMap;
import java.util.List;

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

	public void list(String value, Model model) {
		String val="%"+value+"%";
		String size="nan";
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("value", val);
		map.put("size", size);
		List<MenuInfoDTO> list = mm.list(map);
		model.addAttribute("list", list);
		model.addAttribute("value", value);
	}
	public void detail(String engName, Model model) {
		model.addAttribute("menuInfo", mm.menuInfo(engName));
		model.addAttribute("nutInfo", nm.nutInfo(engName));
	}
}
