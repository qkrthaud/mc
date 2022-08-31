package com.care.mc.mybatis;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.care.mc.dto.StoreDTO;

@Mapper
public interface StoreMapper {
	
	public ArrayList<StoreDTO> search(@Param("sear") String sear,@Param("sear2") String sear2,@Param("sear3") String sear3,@Param("s") int start,@Param("e") int end);
	public int listCount(@Param("sear") String sear,@Param("sear2") String sear2,@Param("sear3") String sear3);
	public ArrayList<StoreDTO> chkSearch(@Param("sear") String sear,@Param("sear2") String sear2,@Param("sear3") String sear3);
	public int addrCount(@Param("s1") String s1,@Param("s2") String s2);

}
