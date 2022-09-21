package com.care.mc.service;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import com.care.mc.dto.NoticeDTO;
import com.care.mc.dto.WhatsNewDTO;

public interface MainService {

	public void getBoard(Model model);

	public void getDetail(int writeNo, Model model);

	public void getHappymeal(Model model);

	public void getHappymealDetail(int writeNo, Model model);

	public void getWhatsNewSearch(Model model, String searchWord, int wnum);

	public List<NoticeDTO> getNotice(Model model);

	public void getbList(Model model, String commonSearchWord, int bnum);

	public void getmList(Model model, String commonSearchWord, int mnum);

	public List<WhatsNewDTO> getWhatsNewSearch(Model model);

	public List<NoticeDTO> getNotice();

	public void noticeUpHit(int num);

	public void wsUpHit(int num);

	public void poUpHit(int writeNo);

	public void hpUpHit(int writeNo);

	public Map<Object, Object> getHappyMeal(String value, int page);

	public Map<Object, Object> getPromotion(String searchStatus, int page);

	public Map<Object, Object> getMainContent(int page);

}
