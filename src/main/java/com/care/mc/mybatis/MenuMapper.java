package com.care.mc.mybatis;


import java.util.HashMap;
import java.util.List;

import com.care.mc.dto.MenuInfoDTO;

public interface MenuMapper {
	public List<MenuInfoDTO> list(HashMap<String, String>map);
	public MenuInfoDTO menuInfo(String engName);
}
