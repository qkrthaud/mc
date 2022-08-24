package com.care.mc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.mc.dto.MenuInfoDTO;
import com.care.mc.mybatis.MenuMapper;
@Service
public class MenuServiceImpl implements MenuService{
	@Autowired MenuMapper mm;

	public void list(Model model) {
		List<MenuInfoDTO> list = mm.list();
		model.addAttribute("list", list);
	}
	public void detail(String name, Model model) {
		model.addAttribute("dto", mm.detail(name));
	}
}
