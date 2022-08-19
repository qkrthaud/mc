package com.care.mc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.care.mc.service.StoreService;

@Controller
@RequestMapping("store")
public class StoreController {
	@Autowired StoreService ss;
	
	
	@GetMapping("search")
	public String search() {
		
		return "store/search";
	}
	@GetMapping("test")
	public String test() {
		return "store/test";
	}

}
