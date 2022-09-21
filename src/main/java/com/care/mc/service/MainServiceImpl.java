package com.care.mc.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.mc.dto.MainDTO;
import com.care.mc.dto.NoticeDTO;
import com.care.mc.dto.WhatsNewDTO;
import com.care.mc.mybatis.MainMapper;

@Service
public class MainServiceImpl implements MainService {
	@Autowired
	MainMapper mp;

	public void getBoard(Model model) {
		model.addAttribute("whatsnew_b", mp.getBoard());
	}

	public void getDetail(int writeNo, Model model) {
		model.addAttribute("details", mp.getDetail(writeNo));
	}

	public Map<Object, Object> getMainContent(int page) {
		int pageNum = page;
		int contentNum = 6;
		int totalCount = mp.mainCount();
		int totalPage = totalCount / contentNum;
		if (totalCount % contentNum != 0) {
			totalPage += 1;
		}
		int end = pageNum * contentNum;
		int start = end + 1 - contentNum;
		List<MainDTO> getList = mp.getMainContent(start, end);
		Map<Object, Object> result = new HashMap<Object, Object>();
		result.put("totalCount", totalCount);
		result.put("pageNum", pageNum);
		result.put("totalPage", totalPage);
		result.put("promotion", getList);
		return result;
	}
	
	public void getHappymeal(Model model) {
		model.addAttribute("happymeal_b", mp.getHappymeal());
	}

	public void getHappymealDetail(int writeNo, Model model) {
		model.addAttribute("details", mp.getHappymealDetail(writeNo));
	}

	public void getWhatsNewSearch(Model model, String searchWord, int wnum) {
		int pageLetter = 5;
		int allCount = mp.wCount(searchWord);
		int wrepeat = allCount / pageLetter;
		if (allCount % pageLetter != 0) {
			wrepeat += 1;
		}
		int end = wnum * pageLetter;
		int start = end + 1 - pageLetter;
		int wst = 0;
		if (wnum / 10 != 0) {
			wst = (wnum - 1) / 10 * 10 + 1;
		} else {
			wst = wnum / 10 * 10 + 1;
		}
		int wed = wrepeat / 10 * 10 + 1;
		model.addAttribute("wst", wst);
		model.addAttribute("wed", wed);
		model.addAttribute("wcount", allCount);
		model.addAttribute("wrepeat", wrepeat);
		model.addAttribute("wlist", mp.getWhatsNewSearch(searchWord, start, end));
	}

	public List<WhatsNewDTO> getWhatsNewSearch(Model model) {
		model.addAttribute("wCount", mp.wCount(""));
		return mp.getWhatsNewSearch2();
	}

	public List<NoticeDTO> getNotice() {
		return mp.getNotice();
	}

	public List<NoticeDTO> getNotice(Model model) {
		model.addAttribute("nCount", mp.nCount());
		return mp.getNotice2();
	}

	public void getmList(Model model, String commonSearchWord, int mnum) {
		int pageLetter = 5;
		int allCount = mp.mCount(commonSearchWord);
		int mrepeat = allCount / pageLetter;
		if (allCount % pageLetter != 0) {
			mrepeat += 1;
		}
		int end = mnum * pageLetter;
		int start = end + 1 - pageLetter;
		int mst = 0;
		if (mnum / 10 != 0) {
			mst = (mnum - 1) / 10 * 10 + 1;
		} else {
			mst = mnum / 10 * 10 + 1;
		}
		int med = mrepeat / 10 * 10 + 1;
		model.addAttribute("mst", mst);
		model.addAttribute("med", med);
		model.addAttribute("mcount", allCount);
		model.addAttribute("mrepeat", mrepeat);
		model.addAttribute("mlist", mp.getmapList(commonSearchWord, start, end));
	}

	public void getbList(Model model, String commonSearchWord, int bnum) {
		int pageLetter = 6;
		int allCount = mp.bCount(commonSearchWord);
		int brepeat = allCount / pageLetter;
		if (allCount % pageLetter != 0) {
			brepeat += 1;
		}
		int end = bnum * pageLetter;
		int start = end + 1 - pageLetter;
		int bst = 0;
		if (bnum / 10 != 0) {
			bst = (bnum - 1) / 10 * 10 + 1;
		} else {
			bst = bnum / 10 * 10 + 1;
		}
		int bed = brepeat / 10 * 10 + 1;
		model.addAttribute("bst", bst);
		model.addAttribute("bed", bed);
		model.addAttribute("bcount", allCount);
		model.addAttribute("brepeat", brepeat);
		model.addAttribute("blist", mp.getbList(commonSearchWord, start, end));
	}

	public void noticeUpHit(int num) {
		mp.noticeUpHit(num);
	}

	public void wsUpHit(int num) {
		mp.wsUpHit(num);
	}

	public void poUpHit(int writeNo) {
		mp.poUpHit(writeNo);
	}

	public void hpUpHit(int writeNo) {
		mp.hpUpHit(writeNo);
	}

	public Map<Object, Object> getHappyMeal(String value, int page) {
		int pageNum = page;
		int contentNum = 6;
		int totalCount = mp.hpCount(value);
		int totalPage = totalCount / contentNum;
		if (totalCount % contentNum != 0) {
			totalPage += 1;
		}

		int end = pageNum * contentNum;
		int start = end + 1 - contentNum;

		List<MainDTO> getList = mp.getHappyMeal(value, start, end);
		Map<Object, Object> result = new HashMap<Object, Object>();
		result.put("value", value);
		result.put("totalCount", totalCount);
		result.put("pageNum", pageNum);
		result.put("totalPage", totalPage);
		result.put("happymeal", getList);
		return result;
	}
	public Map<Object, Object> getPromotion(String value, int page) {
		int pageNum = page;
		int contentNum = 6;
		int totalCount = mp.pCount(value);
		int totalPage = totalCount / contentNum;
		if (totalCount % contentNum != 0) {
			totalPage += 1;
		}
		int end = pageNum * contentNum;
		int start = end + 1 - contentNum;
		List<MainDTO> getList = mp.getPromotion(value, start, end);
		Map<Object, Object> result = new HashMap<Object, Object>();
		result.put("value", value);
		result.put("totalCount", totalCount);
		result.put("pageNum", pageNum);
		result.put("totalPage", totalPage);
		result.put("promotion", getList);
		return result;
	}

}
