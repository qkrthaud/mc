package com.care.mc.mybatis;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.care.mc.dto.MenuInfoDTO;

public interface MenuMapper {
	public MenuInfoDTO menuInfo(HashMap<Object, Object>map);
	public int selectBoardCount(HashMap<Object, Object>map);
	public List<MenuInfoDTO> getList(HashMap<Object, Object>map);
	public List<MenuInfoDTO> detailList(HashMap<Object, Object> map);
}
