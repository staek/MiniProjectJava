package kr.co.softcampus.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.co.softcampus.beans.ContentBean;

public interface BoardMapper {

	@Insert("insert into content_table(content_idx, content_subject, content_text, " 			  + 
	        "content_file, content_writer_idx, content_board_idx, content_date)" 				  +
			"values (content_seq.nextval, #{content_subject}, #{content_text}, #{content_file, jdbcType=VARCHAR}, " +
			"#{content_writer_idx}, #{content_board_idx}, sysdate)")
	void addContentInfo(ContentBean writeContentBean);
	
	
	@Select("select board_info_name " +
			"from board_info_Table" +
			"where board_info_idx = #{board_info_idx}")
	String getBoardInfoName(int board_info_idx);
	
}
