package com.care.mc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.care.mc.dto.MenuInfoDTO;
import com.care.mc.dto.NoticeDTO;
import com.care.mc.dto.StoreDTO;
import com.care.mc.dto.WhatsNewDTO;
import com.care.mc.service.MainService;

@Controller
public class MainController {
	@Autowired
	MainService ms;

	/*
	 * @RequestMapping("/") public String home() { return "main"; }
	 */
	@GetMapping("main")
	public String main(Model model) {
		ms.getMain(model);
		return "main";
	}

	@GetMapping("whatsnew")
	public String whatsnew() {
		return "redirect:whatsnew/whatsnew_promotion";
	}

	@GetMapping("whatsnew/whatsnew_promotion")
	public String whatsnew_promotion(Model model) {
		ms.getBoard(model);
		return "whatsnew/whatsnew_promotion";
	}

	@GetMapping("whatsnew/whatsnew_happymeal")
	public String whatsnew_happymeal(Model model) {
		ms.getHappymeal(model);
		return "whatsnew/whatsnew_happymeal";
	}

	@GetMapping("whatsnew/promotion")
	public String promotionDetail(int writeNo, Model model) {
		ms.poUpHit(writeNo);
		System.out.println("Å×½ºÆ® : " + writeNo);
		ms.getDetail(writeNo, model);
		return "whatsnew/promotion";
	}

	@GetMapping("whatsnew/happymeal")
	public String happyMealDetail(int writeNo, Model model) {
		ms.hpUpHit(writeNo);
		ms.getHappymealDetail(writeNo, model);
		return "whatsnew/happymeal";
	}

	/*
	 * @GetMapping("whatsnew_whatsnew") public String whatsnewWhatsnew(Model model)
	 * { ms.getWhatsNew(model); ms.getNotice(model); return
	 * "whatsnew/whatsnew_whatsnew"; }
	 */
	@RequestMapping("whatsnew/promotion.do")
	public String promotion() {
		return "redirect:whatsnew_promotion";
	}
	@RequestMapping("whatsnew/happymeal.do")
	public String happymeal() {
		return "redirect:whatsnew_happymeal";
	}
	@PostMapping("whatsnew/promotion.do")
	@ResponseBody
	public Map<Object, Object> promotion(@RequestParam(value = "searchStatus", defaultValue = "")String searchStatus, @RequestParam(value = "page", required = false, defaultValue = "1")int page){
		Map<Object, Object> resultMap = new HashMap<Object, Object>();
		System.out.println(searchStatus+","+page);
		System.out.println("promotion");
		resultMap = ms.getPromotion(searchStatus, page);
		return resultMap;
	}
	@PostMapping("whatsnew/happymeal.do")
	@ResponseBody
	public Map<Object, Object> happymeal(@RequestParam(value = "searchStatus", defaultValue = "")String searchStatus, @RequestParam(value = "page", required = false, defaultValue = "1")int page){
		Map<Object, Object> resultMap = new HashMap<Object, Object>();
		System.out.println(searchStatus+","+page);
		System.out.println("happymeal");
		resultMap = ms.getHappyMeal(searchStatus, page);
		return resultMap;
	}
	
	@RequestMapping("whatsnew/list.do")
	public ModelAndView wSearch(Model model,@RequestParam(defaultValue = "") String searchWord, @RequestParam(value = "wnum", required = false, defaultValue = "1")int wnum){
		List<NoticeDTO> list = ms.getNotice(); 
		ms.getWhatsNewSearch(model, searchWord, wnum);
		Object result = model.getAttribute("wlist");
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("wnum", wnum);
		map.put("wed", model.getAttribute("wed"));
		map.put("wst", model.getAttribute("wst"));
		map.put("wrepeat", model.getAttribute("wrepeat"));
		map.put("wcount", model.getAttribute("wcount"));
		map.put("notice", list);
		map.put("list", result);
		map.put("keyword", searchWord);
		mav.addObject("map", map);
		mav.setViewName("whatsnew/whatsnew_whatsnew");
		System.out.println(searchWord);
		return mav;
	}
	
	@RequestMapping("whatsnew/wsdetail.do")
	public String wsDeatil(Model model, String seq, int num) {
		System.out.println("status : "+seq);
		List<WhatsNewDTO> wlist;
		List<NoticeDTO> list;
		if (seq.equals("1")) {
			ms.noticeUpHit(num);
			list = ms.getNotice(model);
			System.out.println(list.get(0).getTitle());
			System.out.println(list.get(1).getTitle());
			System.out.println(list.get(2).getTitle());
			System.out.println(list.get(3).getTitle());
			model.addAttribute("notice", list.get(num-1));
		}else {
			ms.wsUpHit(num);
			wlist = ms.getWhatsNewSearch(model);
			System.out.println(wlist.get(0).getTitle()+",");
			System.out.println(wlist.get(1).getTitle());
			model.addAttribute("normal", wlist.get(num-1));
		}
		return "whatsnew/wsdetail";
	}
	
	@RequestMapping("whatsnew/search.do")
	public ModelAndView mSearch(Model model,@RequestParam(defaultValue = "")String commonSearchWord, @RequestParam(value = "mnum", required = false, defaultValue = "1")int mnum, @RequestParam(value = "bnum", required = false, defaultValue = "1") int bnum) {
		ModelAndView mav = new ModelAndView();
		ms.getmList(model, commonSearchWord, mnum);
		ms.getbList(model,commonSearchWord,bnum);
		Object mlist = model.getAttribute("mlist");
		Object blist = model.getAttribute("blist");
		Map<String, Object> map = new HashMap<String, Object>();
		int allcount = (int) model.getAttribute("mcount") + (int)model.getAttribute("bcount");
		map.put("mmap", mlist);
		map.put("bugger", blist);
		map.put("keyword", commonSearchWord);
		map.put("tcount", allcount);
		map.put("mnum", mnum);
		map.put("bnum", bnum);
		map.put("med", model.getAttribute("med"));
		map.put("mst", model.getAttribute("mst"));
		map.put("bed", model.getAttribute("bed"));
		map.put("bst", model.getAttribute("bst"));
		map.put("mrepeat", model.getAttribute("mrepeat"));
		map.put("brepeat", model.getAttribute("brepeat"));
		map.put("mcount", model.getAttribute("mcount"));
		map.put("bcount", model.getAttribute("bcount"));
		mav.addObject("map", map);
		mav.setViewName("mainSearch");
		return mav;
	}
}
