package com.care.mc.service;

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

	public void list(String size, Model model) {
		size ="nan";
		List<MenuInfoDTO> list = mm.list(size);
		model.addAttribute("list", list);
	}
	public void detail(String engName, Model model) {
		model.addAttribute("menuInfo", mm.menuInfo(engName));
		model.addAttribute("nutInfo", nm.nutInfo(engName));
	}
}
