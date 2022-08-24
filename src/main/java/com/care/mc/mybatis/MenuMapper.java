package com.care.mc.mybatis;

import java.util.List;

import com.care.mc.dto.MenuInfoDTO;

public interface MenuMapper {
	public List<MenuInfoDTO> list();
	public MenuInfoDTO detail(String name);
}
