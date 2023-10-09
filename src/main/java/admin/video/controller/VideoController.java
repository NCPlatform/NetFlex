package admin.video.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.video.bean.EpisodeDTO;
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
	public ModelAndView videoUploadForm2(@ModelAttribute VideoDTO videoDTO, HttpServletRequest request) {
		
	//	int seqMovie = videoService.importSeq();
		System.out.println(videoDTO.toString());
		videoService.upload(videoDTO);
		
		
		int seqSearch = videoService.searchMovie(videoDTO).getSeqMovie();
		int seq = 0;
	//	System.out.println("seqMovie value is "+seqMovie);
		System.out.println("searched seq value is "+seqSearch);
		// 컨텐츠 테이블 만들기 --> seq으로 제작
	//	System.out.println(seqMovie);
	//	if(seqSearch>=seqMovie) {
			seq = seqSearch;
	//	}
		videoService.create(seq);
		
		HttpSession session = request.getSession();
		session.setAttribute("seq", seq);
		mav.setViewName("videoUploadForm2"); // 페이지 이동
		
		return mav;
	}
	
	@GetMapping(value = "videoUpload")
	public ModelAndView videoUpload(@ModelAttribute EpisodeDTO epDTO, HttpServletRequest request) {
		
		//	int seqMovie = videoService.importSeq();
		System.out.println(epDTO.toString());
	//	videoService.addEpisodes(epDTO);
		
		
		
		mav.setViewName("videoUpload"); // 페이지 이동
		
		return mav;
	}
	
}
