package com.care.mc.mybatis;

import java.util.List;

import com.care.mc.dto.MainDTO;

public interface MainMapper {

	public List<MainDTO> getBoard();

	public MainDTO getDetail(int writeNo);

	public List<MainDTO> getMainBoard();

	public List<MainDTO> getHappymeal();

	public MainDTO getHappymealDetail(int writeNo);

}
