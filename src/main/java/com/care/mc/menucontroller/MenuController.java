package com.care.mc.menucontroller;

import java.io.File;
import java.io.FileInputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.mc.service.MenuService;
import com.care.mc.service.MenuFileService;

@Controller
@RequestMapping("menu")
public class MenuController {
	@Autowired MenuService ms;

	
	@GetMapping("list")
	public String list(Model model) {
		ms.list(model);
		return "menu/list";
	}
	@GetMapping("download")
	public void download(@RequestParam("thumbNail") String thumbNail,
						 HttpServletResponse response) 
										throws Exception{
		System.out.println("file : "+thumbNail);
		response.addHeader("Content-disposition", "attachment; fileName="+thumbNail);
		File f = new File(MenuFileService.IMAGE_REPO+"/"+thumbNail);
		FileInputStream in = new FileInputStream(f);
		FileCopyUtils.copy(in, response.getOutputStream());
		in.close();
	}
	
	@GetMapping("detail")
	public String detail() {
		return "menu/detail";
	}
}
