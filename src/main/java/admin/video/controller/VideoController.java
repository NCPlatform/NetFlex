package admin.video.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.video.bean.VideoDTO;
import admin.video.dao.VideoDAO;
import admin.video.service.VideoService;

@Controller
@RequestMapping(value = "admin/video") // 협의 후 결정
public class VideoController {
	@Autowired
	private VideoService videoService;
	
	@Autowired
	private VideoDAO videoDAO;
	
	// model n view 방식 / or ?
	private ModelAndView mav;
	
	public void setModelAndView(ModelAndView mav) {
		this.mav = mav;
	}
	
	@GetMapping(value = "videoUploadForm")
	public ModelAndView videoUploadForm() {
		mav.setViewName("videoUploadForm");
		return mav;
	}
	
	@GetMapping(value = "videoUploadForm2")
	public ModelAndView videoUploadForm2(@ModelAttribute VideoDTO videoDTO) {
		
		
		System.out.println(videoDTO.toString());
		videoService.upload(videoDTO);
		
		VideoDTO videoDTO2 = videoService.searchMovie(videoDTO);
		System.out.println(videoDTO2.toString());
		// 컨텐츠 테이블 만들기 --> seq으로 제작
		// videoService.create(videoDTO2.getSeqMovie());
		
		
		
		mav.setViewName("videoUploadForm2"); // 페이지 이동
		
		return mav;
	}
	
}
