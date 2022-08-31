package com.care.mc.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
	@PostMapping(value="addr_result",produces = "application/json; charset=utf-8")
	public int addr_result(@RequestBody String n) {
		System.out.println(n);
		if(n=="") {
			return 0;
		}
		
		String[] str=n.split(" ");
		String s=str[2];
		System.out.println(s);
		int result=ss.searchAddr(s);
		
		return result;
	}

}
