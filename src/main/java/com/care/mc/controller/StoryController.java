package com.care.mc.controller;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.mc.dto.FaqDTO;
import com.care.mc.service.FaqService;

@Controller
@RequestMapping("story")
public class StoryController {
	@GetMapping("main")
	public String main() {
		return "story/main";
	}
	@GetMapping("brand/brandIntro")
	public String brandIntro() {
		return "story/brand/brandIntro";
	}
	@GetMapping("brand/brandHistory")
	public String brandHistory() {
		return "story/brand/brandHistory";
	}
	@GetMapping("society/list")
	public String list() {
		return "story/society/list";
	}
	@GetMapping("society/scaleForGood")
	public String scaleForGood() {
		return "story/society/scaleForGood";
	}
	@GetMapping("society/kidsSoccer")
	public String kidsSoccer() {
		return "story/society/kidsSoccer";
	}
	@GetMapping("society/happyBurger")
	public String happyBurger() {
		return "story/society/happyBurger";
	}
	@GetMapping("society/safetyGuard")
	public String safetyGuard() {
		return "story/society/safetyGuard";
	}
	@GetMapping("society/mcDonaldHouse")
	public String mcDonaldHouse() {
		return "story/society/mcDonaldHouse";
	}
	@GetMapping("competition/farmToRestaurant")
	public String farmToRestaurant() {
		return "story/competition/farmToRestaurant";
	}
	@Autowired
	FaqService fs;
	@GetMapping("competition/faq")
	public String faq(Model model,@RequestParam(required = false)String choice,String search,@RequestParam(required = false)String num) {
		System.out.println("choice : "+choice);
		System.out.println("sear : "+search);
		System.out.println("num : "+num);
		if(choice==null) {
			choice="";
		}
		if(search==null) {
			search="";
		}
		if(choice=="") {
			choice="전체";
		}
		if(search=="") {
			search="없음";
		}
		
		model.addAttribute("num",num);
		
	
		
		fs.faqList(model,choice,search);
		return "story/competition/faq";
	}
	@GetMapping("people/crew")
	public String crew() {
		return "story/people/crew";
	}
	@GetMapping("people/work")
	public String work() {
		return "story/people/work";
	}
	@GetMapping("people/recruit")
	public String recruit() {
		return "story/people/recruit";
	}
	

}
