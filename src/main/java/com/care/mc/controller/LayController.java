package com.care.mc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("layout")
public class LayController {
	@GetMapping("location")
	public String location() {
		return "layout/location";
	}
	@GetMapping("private")
	public String layPrivate() {
		return "layout/private";
	}
	@GetMapping("sitemap")
	public String sitemap() {
		return "layout/sitemap";
	}

}
