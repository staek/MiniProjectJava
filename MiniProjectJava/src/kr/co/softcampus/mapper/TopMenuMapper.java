package kr.co.softcampus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.softcampus.beans.BoardInfoBean;

public interface TopMenuMapper {

	@Select("select a.board_info_idx\r\n" + 
			"     , a.board_info_name\r\n" + 
			" from  board_info_table a\r\n" + 
			" order by a.board_info_idx\r\n" + 
			" ")
	public List<BoardInfoBean> getTopMenuList();
	
	
}
