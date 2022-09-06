package com.care.mc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.care.mc.service.MainService;

@Controller
public class MainController {
	@Autowired
	MainService ms;

	/*
	 * @RequestMapping("/") public String home() { return "main"; }
	 */
	@GetMapping("main")
	public String main(Model model) {
		ms.getMain(model);
		return "main";
	}

	@GetMapping("whatsnew")
	public String whatsnew() {
		return "redirect:whatsnew_promotion";
	}
	
	@GetMapping("whatsnew_promotion")
	public String whatsnew_promotion(Model model) {
		ms.getBoard(model);
		return "whatsnew/whatsnew_promotion";
	}
	
	@GetMapping("whatsnew_happymeal")
	public String whatsnew_happymeal(Model model) {
		ms.getHappymeal(model);
		return "whatsnew/whatsnew_happymeal";
	}
	
	@GetMapping("whatsnew/promotion")
	public String promotionDetail(int writeNo, Model model) {
		System.out.println("Å×½ºÆ® : "+writeNo);
		ms.getDetail(writeNo, model);
		return "whatsnew/promotion";
	}
	
	@GetMapping("whatsnew/happymeal")
	public String happyMealDetail(int writeNo, Model model) {
		ms.getHappymealDetail(writeNo, model);
		return "whatsnew/happymeal";
	}
}


