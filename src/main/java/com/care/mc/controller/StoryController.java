package com.care.mc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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

}
