package com.care.mc.menucontroller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.mc.dto.MenuInfoDTO;
import com.care.mc.service.MenuService;

@Controller
@RequestMapping("menu")
public class MenuController {
	@Autowired MenuService ms;
	
	@GetMapping("list")
	public String list(@RequestParam("value") String value, Model model){
		ms.list(value, model);
		return "menu/list";
		
	}
	
	@GetMapping("detail")
	public String detail(@RequestParam("engName") String engName, Model model) {
		ms.detail(engName, model);	
		return "menu/detail";
	}
	@RequestMapping(value="getList",produces="application/json; charset=utf-8",
					method= { RequestMethod.POST})
	@ResponseBody
	public String getList(@RequestParam("page") int page,
					@RequestParam("value") String value,
					Model model) {
		System.out.println(page);
		System.out.println(value);
		ms.getList(page, value, model);
		
		return "menu/listContent";
	}
}	




