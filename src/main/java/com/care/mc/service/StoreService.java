package com.care.mc.service;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.care.mc.dto.StoreDTO;

public interface StoreService {
	public void search(String sear,Model model,int num,ArrayList<String> arr);
	public int searchAddr(String s);

}
