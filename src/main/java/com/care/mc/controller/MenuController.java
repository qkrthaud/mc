package com.care.mc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.mc.service.MenuService;

@Controller
@RequestMapping("menu")
public class MenuController {
	@Autowired MenuService ms;

	@PostMapping("/list")
	public String list(HttpServletRequest request,
			Model model){
		String value = request.getParameter("sub_category");
		System.out.println("입력된 밸류 : "+value);
		model.addAttribute("value", value);
		if(value.equals("버거")) {
			return "menu/list/burgerList";
		}else if(value.equals("Burger세트")) {
			return "menu/list/burgerList";
		}else if(value.equals("맥런치")){
			return "menu/list/mcLunchList";
		}else if(value.equals("맥모닝")) {
			return "menu/list/mcMorningList";
		}else if(value.equals("모닝세트")){
			return "menu/list/mcMorningList";
		}else if(value.equals("해피스낵")){
			return "menu/list/happySnackList";
		}else if(value.equals("사이드")){
			return "menu/list/sideDessertList";
		}else if(value.equals("디저트")) {
			return "menu/list/sideDessertList";
		}else if(value.equals("맥카페")) {
			return "menu/list/beverageList";
		}else if(value.equals("음료")) {
			return "menu/list/beverageList";
		}else if(value.equals("해피밀AM")) {
			return "menu/list/happyMealList";
		}else if(value.equals("해피밀PM")) {
			return "menu/list/happyMealList";
		}else {
			return "";
		}

	}
	
	@PostMapping(value="menuList", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<Object, Object> menuList(@RequestParam("value") String value,
			@RequestParam(value="page",required = false, defaultValue="1") int page) {
		System.out.println("서버에서 받은 밸류 :"+value);
		System.out.println("서버에서 받은 페이지 : "+page);

		Map<Object, Object> resultMap = new HashMap<Object, Object>();
		resultMap = ms.menuList(value, page);
		return resultMap;
	}

	@PostMapping("/detail")
	public String detail(HttpServletRequest request,
						Model model) {
		String value = request.getParameter("sub_category");
		String page = request.getParameter("page");
		String seq = request.getParameter("seq");
		System.out.println("value : "+value);
		System.out.println("page : "+page);
		System.out.println("seq : "+seq);
		ms.detail(seq, value, page, model);
		if(value.equals("버거")) {
			return "menu/detail/burgerDetail";
		}else if(value.equals("Burger세트")) {
			return "menu/detail/burgerDetail";
		}else if(value.equals("맥런치")){
			return "menu/detail/mcLunchDetail";
		}else if(value.equals("맥모닝")) {
			return "menu/detail/mcMorningDetail";
		}else if(value.equals("모닝세트")){
			return "menu/detail/mcMorningDetail";
		}else if(value.equals("해피스낵")){
			return "menu/detail/happySnackDetail";
		}else if(value.equals("사이드")){
			return "menu/detail/sideDessertDetail";
		}else if(value.equals("디저트")) {
			return "menu/detail/sideDessertDetail";
		}else if(value.equals("맥카페")) {
			return "menu/detail/beverageDetail";
		}else if(value.equals("음료")) {
			return "menu/detail/beverageDetail";
		}else if(value.equals("해피밀AM")) {
			return "menu/detail/happyMealDetail";
		}else if(value.equals("해피밀PM")) {
			return "menu/detail/happyMealDetail";
		}else {
			return "";
		}

	}
	@PostMapping("/detailPaging")
	public String detailPaging(HttpServletRequest request,
						Model model) {
		String value = request.getParameter("sub_category");
		String page = request.getParameter("page");
		System.out.println("value : "+value);
		System.out.println("page : "+page);
		ms.detailPaging(value, page, model);
		if(value.equals("버거")) {
			return "menu/detail/burgerDetail";
		}else if(value.equals("Burger세트")) {
			return "menu/detail/burgerDetail";
		}else if(value.equals("맥런치")){
			return "menu/detail/mcLunchDetail";
		}else if(value.equals("맥모닝")) {
			return "menu/detail/mcMorningDetail";
		}else if(value.equals("모닝세트")){
			return "menu/detail/mcMorningDetail";
		}else if(value.equals("해피스낵")){
			return "menu/detail/happySnackDetail";
		}else if(value.equals("사이드")){
			return "menu/detail/sideDessertDetail";
		}else if(value.equals("디저트")) {
			return "menu/detail/sideDessertDetail";
		}else if(value.equals("맥카페")) {
			return "menu/detail/beverageDetail";
		}else if(value.equals("음료")) {
			return "menu/detail/beverageDetail";
		}else if(value.equals("해피밀AM")) {
			return "menu/detail/happyMealDetail";
		}else if(value.equals("해피밀PM")) {
			return "menu/detail/happyMealDetail";
		}else {
			return "";
		}
	}
	@PostMapping("/size")
	public String showSize(HttpServletRequest request, Model model) {
		String seq = request.getParameter("seq");
		System.out.println("메뉴시퀀스 번호 :"+seq);
		ms.showSize(seq, model);
		return "menu/size";
	}
}	




