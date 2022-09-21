package com.care.mc.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.care.mc.dto.MainDTO;
import com.care.mc.dto.MenuInfoDTO;
import com.care.mc.dto.NoticeDTO;
import com.care.mc.dto.StoreDTO;
import com.care.mc.dto.WhatsNewDTO;

public interface MainMapper {

	public List<MainDTO> getBoard();

	public MainDTO getDetail(int writeNo);

	public List<MainDTO> getHappymeal();

	public MainDTO getHappymealDetail(int writeNo);

	public List<WhatsNewDTO> getWhatsNewSearch(@Param("search") String searchWord, @Param("s") int start,
			@Param("e") int end);

	public List<NoticeDTO> getNotice();

	public List<StoreDTO> getmapList(@Param("search") String commonSearchWord, @Param("s") int start,
			@Param("e") int end);

	public List<MenuInfoDTO> getbList(@Param("search") String commonSearchWord, @Param("s") int start,
			@Param("e") int end);

	public int wCount(@Param("search") String searchWord);

	public int mCount(@Param("search") String commonSearchWord);

	public int bCount(@Param("search") String commonSearchWord);

	public List<WhatsNewDTO> getWhatsNewSearch2();

	public int nCount();

	public List<NoticeDTO> getNotice2();

	public void noticeUpHit(int num);

	public void wsUpHit(int num);

	public void poUpHit(int writeNo);

	public void hpUpHit(int writeNo);

	public int hpCount(String value);

	public List<MainDTO> getHappyMeal(@Param("search") String value, @Param("s") int start, @Param("e") int end);

	public int pCount(String value);

	public List<MainDTO> getPromotion(@Param("search") String value, @Param("s") int start, @Param("e") int end);

	public int mainCount();

	public List<MainDTO> getMainContent(@Param("s") int start, @Param("e") int end);

}
