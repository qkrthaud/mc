package com.care.mc.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.care.mc.dto.FaqDTO;

public interface FaqMapper {
	public ArrayList<FaqDTO> choSearch(@Param("ch") String ch,@Param("se") String se,@Param("sea") String sea);
	public ArrayList<FaqDTO> allList();
	public ArrayList<FaqDTO> allSearch(@Param("se") String se, @Param("sear") String sear);
	public ArrayList<FaqDTO> choList(@Param("ch")String ch);

}
