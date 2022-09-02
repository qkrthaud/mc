package com.care.mc.menucontroller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.mc.dto.MenuInfoDTO;
import com.care.mc.service.MenuService;

@Controller
@RequestMapping("menu")
public class MenuController {
	@Autowired MenuService ms;
	
	@GetMapping("list")
	public String list(@RequestParam("value") String value,
						@RequestParam(value="page",required = false, defaultValue="1") int page, 
						Model model){
		ms.list(value, page, model);
		return "menu/list";
		
	}
	
	@GetMapping("detail")
	public String detail(@RequestParam("engName") String engName, Model model) {
		ms.detail(engName, model);	
		return "menu/detail";
	}
	@PostMapping(value="menuList", produces = "application/json; charset=utf-8")
	public String menuList(@RequestParam("value") String value,
						@RequestParam(value="page",required = false, defaultValue="1") int page) {
		System.out.println(value);
		System.out.println(page);
		ms.menuList(value, page);
		
		return "menu/list";
	}
}	




