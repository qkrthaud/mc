package com.care.mc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.care.mc.service.StoreService;

@RestController
@RequestMapping("store")
public class StoreRestController {
	@Autowired
	StoreService ss;
	@GetMapping("sear")
	public void sear(String sear,Model model) {
		/* ss.search(sear,model); */
	}

}
