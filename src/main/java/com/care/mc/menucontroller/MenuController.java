package com.care.mc.menucontroller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.mc.service.MenuService;

@Controller
@RequestMapping("menu")
public class MenuController {
	@Autowired MenuService ms;

	@PostMapping("/list")
	public String list(HttpServletRequest request,
						Model model){
		String value = request.getParameter("sub_category");
		System.out.println("입력된 밸류 : "+value);
		ms.list(value, model);
		if(value.equals("버거")) {
			return "menu/burgerList";
		}else if(value.equals("Burger세트")) {
			return "menu/burgerList";
		}else if(value.equals("맥런치")){
			return "menu/mcLunchList";
		}else if(value.equals("맥모닝")) {
			return "menu/mcMorningList";
		}else if(value.equals("모닝세트")){
			return "menu/mcMorningList";
		}else if(value.equals("해피스낵")){
			return "menu/happySnackList";
		}else if(value.equals("사이드")){
			return "menu/sideDessert";
		}else if(value.equals("디저트")) {
			return "menu/sideDessert";
		}else if(value.equals("맥카페")) {
			return "menu/beverageList";
		}else if(value.equals("음료")) {
			return "menu/beverageList";
		}else if(value.equals("해피밀AM")) {
			return "menu/happyMealList";
		}else if(value.equals("해피밀PM")) {
			return "menu/happyMealList";
		}else {
			return "";
		}

	}

	@GetMapping("detail")
	public String detail(@RequestParam("engName") String engName, Model model) {
		ms.detail(engName, model);	
		return "menu/detail";
	}
	@PostMapping(value="menuList", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<Object, Object> menuList(@RequestParam("value") String value,
			@RequestParam(value="page",required = false, defaultValue="1") int page) {
		System.out.println("서버에서 받은 밸류 :"+value);
		System.out.println("서버에서 받은 페이지 : "+page);

		Map<Object, Object> resultMap = new HashMap<Object, Object>();
		resultMap = ms.menuList(value, page);
		return resultMap;
	}
}	




