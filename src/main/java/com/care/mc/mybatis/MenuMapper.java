package com.care.mc.mybatis;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.care.mc.dto.MenuInfoDTO;

public interface MenuMapper {
	public List<MenuInfoDTO> list(HashMap<String, String>map);
	public MenuInfoDTO menuInfo(String engName);
	public int selectBoardCount(HashMap<String, String>map);
	public List<MenuInfoDTO> getList(
					@Param("s")int start, @Param("e") int end);			
}
