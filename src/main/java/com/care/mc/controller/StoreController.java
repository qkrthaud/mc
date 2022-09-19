package com.care.mc.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.mc.service.StoreService;

@Controller
@RequestMapping("store")
public class StoreController {
	@Autowired StoreService ss;
	
	
	@GetMapping("search")
	public String search(String sear,Model model,@RequestParam(value="num", required=false, defaultValue = "1") int num,
			String morning,String parking,String del,String decafe,String drive,String h24) {
		ArrayList<String> arr = new ArrayList<String>();
		if(h24!=null) {
			if(h24.equals("")) {
				h24=null;
			}
		}
		if(drive!=null) {
			if(drive.equals("")) {
				drive=null;
			}
		}
		if(del!=null) {
			if(del.equals("")) {
				del=null;
			}
		}
		if(decafe!=null) {
			if(decafe.equals("")) {
				decafe=null;
			}
		}
		if(morning!=null) {
			if(morning.equals("")) {
				morning=null;
			}
		}
		if(parking!=null) {
			if(parking.equals("")) {
				parking=null;
			}
		}
		
		
		System.out.println("sear : "+sear);
		System.out.println("h24 : "+h24);
		System.out.println("mor : "+morning);
		System.out.println("par : "+parking);
		System.out.println("del : "+del);
		System.out.println("dec : "+decafe);
		System.out.println("dri : "+drive);
		if(h24!=null) {
			model.addAttribute("h24",h24);
			arr.add(h24);
		}
		if(morning!=null) {
			model.addAttribute("morning",morning);
			arr.add(morning);
		}
		if(del!=null) {
			model.addAttribute("del",del);
			arr.add(del);
		}
		if(parking!=null) {
			model.addAttribute("parking",parking);
			arr.add(parking);
		}
		if(decafe!=null) {
			model.addAttribute("decafe",decafe);
			arr.add(decafe);
		}
		if(drive!=null) {
			model.addAttribute("drive",drive);
			arr.add(drive);
		}
		System.out.println("sear : "+sear);
		
		ss.search(sear,model,num,arr);
		
		return "store/search";
	}
	@GetMapping("rental")
	public String rental() {
		
		return "store/rental";
	}
	@GetMapping("delivery")
	public String delivery() {
		return "store/delivery";
	}
	@GetMapping("drive")
	public String drive() {
		return "store/drive";
	}
	@GetMapping("storeEvent")
	public String storeEvent(Model model) {
		ss.getEventStore(model);
		return "store/storeEvent";
	}
	
	

}
