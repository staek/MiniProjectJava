package kr.co.softcampus.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.softcampus.beans.ContentBean;
import kr.co.softcampus.beans.PageBean;
import kr.co.softcampus.beans.UserBean;
import kr.co.softcampus.dao.BoardDao;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class BoardService {

	@Value("${path.upload}")
	private String path_upload;
	
	@Value("${page.listcnt}")
	private int page_listcnt;
	
	@Value("${page.paginationcnt}")
	private int page_paginationcnt;
	
	@Autowired
	private BoardDao boardDao;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	
	private String saveUpLoadFile(MultipartFile upload_file) {
		
		String file_name = System.currentTimeMillis() + "_" +upload_file.getOriginalFilename();
		
		try {
			upload_file.transferTo(new File(path_upload + "/" + file_name));
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return file_name;
	}
	
	public void addConentInfo(ContentBean writeContentBean) {
		
			System.out.println("writeContentBean:"+ writeContentBean.getContent_subject());
			System.out.println("writeContentBean:"+ writeContentBean.getContent_text());
			System.out.println("writeContentBean:"+ writeContentBean.getUpload_file().getSize());
			
			MultipartFile upload_file = writeContentBean.getUpload_file();
			
			if(upload_file.getSize() > 0) {
				String file_name = saveUpLoadFile(upload_file);
				System.out.println(file_name);
				
				writeContentBean.setContent_file(file_name);
			}
			
			writeContentBean.setContent_writer_idx(loginUserBean.getUser_idx());
			
			boardDao.addContentInfo(writeContentBean);
	}
	
	public String getBoardInfoName(int board_info_idx) {
		return boardDao.getBoardInfoName(board_info_idx);
	}
	
	// 페이지 세팅
	public List<ContentBean> getContentList(int board_info_idx, int page) {

		 /*
		 *  1-> 0
		 *  2-> 10
		 *  3-> 20
		 */
		// page가 1이면 0(start)~9까지
		int start = (page - 1) * page_listcnt;
		RowBounds rowBounds = new RowBounds(start, page_listcnt);
		
		
		return boardDao.getContentList(board_info_idx, rowBounds);
		
	}
	
	public ContentBean getContentInfo(int content_idx) {
		return boardDao.getContentInfo(content_idx);
	}
	
	public void modifyContentInfo(ContentBean modifyContentBean) {
		
		MultipartFile upload_file = modifyContentBean.getUpload_file();
		
		if(upload_file.getSize() > 0) {
			String file_name = saveUpLoadFile(upload_file);
			System.out.println(file_name);
			
			modifyContentBean.setContent_file(file_name);
		}
		
		boardDao.modifyContentInfo(modifyContentBean);
		
	}
	
	public void deleteContentInfo(int content_idx) {
		boardDao.deleteContentInfo(content_idx);
	}
	// db로 반환하는게 아님.
	public PageBean getContentCnt(int content_board_idx, int currentPage) {
		
		int content_cnt = boardDao.getContentCnt(content_board_idx);
		PageBean pageBean = new PageBean(content_cnt, currentPage, page_listcnt, page_paginationcnt);
		
		return pageBean;
	}
	
}
