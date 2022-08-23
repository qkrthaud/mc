package com.care.mc.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.mc.dto.StoreDTO;
import com.care.mc.service.StoreService;

@Controller
@RequestMapping("store")
public class StoreController {
	@Autowired StoreService ss;
	
	
	@GetMapping("search")
	public String search(String sear,Model model,@RequestParam(value="num", required=false, defaultValue = "1") int num,
			String mor,String par,String del,String dec,String dri) {
		System.out.println("mor : "+mor);
		System.out.println("par : "+par);
		System.out.println("del : "+del);
		System.out.println("dec : "+dec);
		System.out.println("dri : "+dri);
		if(mor!=null) {
			model.addAttribute("mor",mor);
		}
		if(del!=null) {
			model.addAttribute("del",del);
		}
		if(par!=null) {
			model.addAttribute("par",par);
		}
		if(dec!=null) {
			model.addAttribute("dec",dec);
		}
		if(dri!=null) {
			model.addAttribute("dri",dri);
		}
		System.out.println("sear : "+sear);
		if(sear!=null) {
			ss.search(sear,model,num);
		}
		return "store/search";
	}
	@GetMapping("test")
	public String test(String sear,Model model) {
		System.out.println("컨트롤");
		System.out.println("string : "+sear);
		/* ss.search(sear,model); */
		return "store/search";
	}

}
