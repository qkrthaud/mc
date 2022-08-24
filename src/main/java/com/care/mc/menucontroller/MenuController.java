package com.care.mc.menucontroller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.mc.service.MenuService;

@Controller
@RequestMapping("menu")
public class MenuController {
	@Autowired MenuService ms;

	
	@GetMapping("list")
	public String list(Model model) {
		ms.list(model);
		return "menu/list";
	}
	
	@GetMapping("detail")
	public String detail(@RequestParam("name") String name, Model model) {
		ms.detail(name, model);
		return "menu/detail";
	}
}




