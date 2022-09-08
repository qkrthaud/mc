package com.care.mc.controller;



import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

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
	@GetMapping("download")
	public void download(HttpServletResponse response) throws Exception {
		
		String filePath="E:\\file\\rental.docx";
		File file = new File(filePath);
    	response.setHeader("Content-Disposition", "attachment;filename=" + file.getName());
    	
    	FileInputStream fileInputStream = new FileInputStream(filePath);
    	OutputStream out = response.getOutputStream();
    	
    	int read = 0;
            byte[] buffer = new byte[(int)file.length()];
            while ((read = fileInputStream.read(buffer)) > 0) {
                out.write(buffer, 0, read);
            }
		
	}

}
