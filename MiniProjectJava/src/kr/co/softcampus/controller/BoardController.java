package kr.co.softcampus.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softcampus.beans.ContentBean;
import kr.co.softcampus.beans.PageBean;
import kr.co.softcampus.beans.UserBean;
import kr.co.softcampus.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	@GetMapping("/main")
	public String main(@RequestParam("board_info_idx") int board_info_idx,
					   @RequestParam(value = "page", defaultValue = "1") int page,
						Model model) {
		
		model.addAttribute("board_info_idx", board_info_idx);
		
		String boardInfoName = boardService.getBoardInfoName(board_info_idx);
		model.addAttribute("boardInfoName", boardInfoName);
		
		List<ContentBean> contentList = boardService.getContentList(board_info_idx, page);
		model.addAttribute("contentList", contentList);
		
		PageBean pageBean = boardService.getContentCnt(board_info_idx, page);
		model.addAttribute("pageBean", pageBean);
		
		
		model.addAttribute("page", page);
		
		return "board/main";
	}
	
	@GetMapping("/read")
	public String read(@RequestParam("board_info_idx") int board_info_idx,
					   @RequestParam("content_idx") int content_idx,
					   @RequestParam("page") int page,					   
					   Model model) {
		
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);
		
		
		ContentBean readContentBean = boardService.getContentInfo(content_idx);
		model.addAttribute("readContentBean", readContentBean);
		
		model.addAttribute("loginUserBean",loginUserBean);
		model.addAttribute("page",page);

		
		return "board/read";
	}
	
	@GetMapping("/write")
	public String write(@ModelAttribute("writeContentBean") ContentBean writeContentBean,
						@RequestParam("board_info_idx") int board_info_idx) {
		
		
		writeContentBean.setContent_board_idx(board_info_idx);
		
		return "board/write";
	}	
	
	@PostMapping("/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeContentBean") ContentBean writeContentBean, BindingResult result) {
		
		System.out.println("write_pro start");
		if(result.hasErrors()) {
			System.out.println("write_pro error");

			return "board/write";
		}
		boardService.addConentInfo(writeContentBean);
		
		return "board/write_success";
	}
	
	
	@GetMapping("/modify")
	public String modify(@RequestParam("board_info_idx") int board_info_idx,
						 @RequestParam("content_idx") int content_idx,
						 @ModelAttribute("modifyContentBean") ContentBean modifyContentBean,
						 @RequestParam("page") int page,
						 Model model) {
		
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);
				
		ContentBean tempContentBean = boardService.getContentInfo(content_idx);
		
		//model.addAttribute하지 않아도 자동 jsp에서 바인딩됨.
		modifyContentBean.setContent_writer_name(tempContentBean.getContent_writer_name());
		modifyContentBean.setContent_date(tempContentBean.getContent_date());
		modifyContentBean.setContent_subject(tempContentBean.getContent_subject());
		modifyContentBean.setContent_text(tempContentBean.getContent_text());
		modifyContentBean.setContent_file(tempContentBean.getContent_file());
		modifyContentBean.setContent_writer_idx(tempContentBean.getContent_writer_idx());
		modifyContentBean.setContent_board_idx(board_info_idx);
		modifyContentBean.setContent_idx(content_idx);
		
		return "board/modify";
	}	
	
	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyContentBean") ContentBean modifyContentBean
			, BindingResult result,
			@RequestParam("page") int page,
			Model model) {
		
		model.addAttribute("page", page);
		
		if(result.hasErrors()) {
			return "board/modify";
		}
		
		boardService.modifyContentInfo(modifyContentBean);
		
		
		return "board/modify_success";
	}

	
	
	@GetMapping("/not_writer")
	public String not_writer() {
		return "board/not_writer";
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam("board_info_idx") int board_info_idx,
						 @RequestParam("content_idx") int content_idx,
						 Model model) {
		
		boardService.deleteContentInfo(content_idx);
		
		model.addAttribute("board_info_idx", board_info_idx);
		
		return "board/delete";
	}
	
	
	
	
	
	
	
	
}
