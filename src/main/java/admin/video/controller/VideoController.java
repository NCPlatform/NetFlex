package admin.video.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import admin.video.bean.EpisodeDTO;
import admin.video.bean.VideoDTO;
import admin.video.dao.VideoDAO;
import admin.video.service.VideoService;
import user.bean.Paging;
import admin.video.bean.userPaging;
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
	
	@GetMapping(value = "") // videoMain
	public String videomain(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		System.out.println("UserController String list() : pg"+pg);
		model.addAttribute("pg", pg); 
		
		// ModelAndView 객체는 addObject를 하더라도 무조건 객체를 리턴해야 사용 가능하고,
		// Model의 경우 파라메터로 받아와서 addAttribute를 하면 리턴하지 않아도 값이 넘어간다.
		int totalA = videoDAO.getTotalA();
		userPaging paging = new userPaging();
		paging.setCurrentPage(Integer.parseInt(pg));
		paging.setPageBlock(5); // <이전 2 3 4 5 6 다음>
		paging.setPageSize(15); // 페이지 당 게시글 15개
		paging.setTotalA(totalA);
		paging.makePagingHTML();
		System.out.println(paging.getPagingHTML());
		
		model.addAttribute("page",paging.getPagingHTML());
		
		
		return "/Admin/movie/videomain";
	}
	
	@PostMapping(value="getVideoList")
	@ResponseBody
	public List<VideoDTO> getVideoList(@RequestParam String pg) {
		
		System.out.println("UserController List<> getVideoList : pg"+pg);
		
		List<VideoDTO> DTOlist = videoService.getVideoList(pg);
		
		for(VideoDTO dto : DTOlist) {
			dto.setThumbnail();
		} // videoDTO thumbnail 부분 참조. DTO와 videomain.jsp에 영향을 주고 있음 
		
		return DTOlist;
	}
	
	@PostMapping(value="search")
	@ResponseBody
	public List<VideoDTO> search(@RequestParam String value) {
		
		
		List<VideoDTO> DTOlist = videoService.search(value);
		
		for(VideoDTO dto : DTOlist) {
			dto.setThumbnail();
		} // videoDTO thumbnail 부분 참조. DTO와 videomain.jsp에 영향을 주고 있음 
		
		return DTOlist;
	}
	
	@PostMapping(value="getVideoListbyName")
	@ResponseBody
	public List<VideoDTO> getVideoListbyName(@RequestParam String pg, @RequestParam String order) {
		
		List<VideoDTO> DTOlist = videoService.getVideoListbyName(pg,order);
		System.out.println(order);
		
		for(VideoDTO dto : DTOlist) {
			dto.setThumbnail();
		} // videoDTO thumbnail 부분 참조. DTO와 videomain.jsp에 영향을 주고 있음 
		
		return DTOlist;
	}
	
	@PostMapping(value="getEpisodeList")
	@ResponseBody
	public List<EpisodeDTO> getEpisodeList(@RequestParam String seqMovie) {
		
		System.out.println("UserController List<> getEpisodeList : pg"+seqMovie);
		
		List<EpisodeDTO> DTOlist = videoService.getEpisodeList(seqMovie);
		
		/**/
		for(EpisodeDTO dto : DTOlist) {
			dto.setThumbnail();
		} // videoDTO thumbnail 부분 참조. DTO와 videomain.jsp에 영향을 주고 있음 
		
		
		// return videoService.getVideoList(pg);
		return DTOlist;
	}
	
	
	
	
	@GetMapping(value = "videoUploadForm")
	public ModelAndView videoUploadForm() {
		mav.setViewName("/Admin/movie/videoUploadForm");
		
		return mav;
	}
	

	@GetMapping(value = "videoUploadForm2")
	public ModelAndView videoUploadForm2(@ModelAttribute VideoDTO videoDTO, HttpServletRequest request) {
		
		System.out.println(videoDTO.toString());
		videoService.upload(videoDTO);
		
		VideoDTO videoDTO2 = videoService.searchMovie(videoDTO);
		System.out.println(videoDTO2.toString());
		
		int seqSearch = videoService.searchMovie(videoDTO).getSeqMovie();
		int seq = 0;
		System.out.println("searched seq value is "+seqSearch);
		// 컨텐츠 테이블 만들기 --> seq으로 제작
			seq = seqSearch;
		videoService.create(seq);
		
		HttpSession session = request.getSession();
		session.setAttribute("seq", seq);
		mav.setViewName("/Admin/movie/videoUploadForm2"); // 페이지 이동
		
		return mav;
	}
	
	@GetMapping(value = "videoUpload")
	public ModelAndView videoUpload(@ModelAttribute EpisodeDTO epDTO, HttpServletRequest request) {
		
		//	int seqMovie = videoService.importSeq();
		System.out.println(epDTO.toString());
		/**/
		ArrayList<EpisodeDTO> DTOlist = new ArrayList<>();
		DTOlist = epDTO.makeList();
		
		for(EpisodeDTO dto : DTOlist) {
			System.out.println(dto.toString());
			dto.setThumbnail(1);
			System.out.println(dto.getThumbnail());
			videoService.addEpisodes(dto);
		}
		
		mav.setViewName("/Admin/movie/videoUpload"); // 페이지 이동
		
		return mav;
	}
	
	@GetMapping(value = "videoUpdateForm") // Update를 Upload와 헷갈리지 않도록 주의 
	public ModelAndView videoUpdateForm(@RequestParam int seqMovie, HttpSession httpSession) {
		
		System.out.println("videoUpdateForm required : seqMovie value = "+seqMovie);
		
		HashMap<String, Integer> videoMap = new HashMap<>();
		
		videoMap.put("seqMovie", seqMovie);
		
		VideoDTO videoDTO = videoService.searchVideo(videoMap);
		videoDTO.setThumbnail();
		
		httpSession.setAttribute("videoDTO", videoDTO);
		
		mav.setViewName("/Admin/movie/videoUpdateForm");
		return mav;
	}
	
	@PostMapping(value = "videoUpdate")
	@ResponseBody
	public void videoUpdate(@ModelAttribute VideoDTO videoDTO) {
		System.out.println(videoDTO.toString());
		videoService.videoUpdate(videoDTO);
		
	}
	
	@GetMapping(value = "episodeUpdateForm") // Update를 Upload와 헷갈리지 않도록 주의 
	public ModelAndView episodeUpdateForm(@RequestParam Integer seqMovie, Integer epNum, HttpServletRequest request) {
		
		System.out.println("seqMovie value = "+seqMovie);
		System.out.println("epNum value = "+epNum);
		HttpSession session = request.getSession();
		HashMap<String, Integer> episodeMap = new HashMap<>();
		
		episodeMap.put("seqMovie", seqMovie);
		episodeMap.put("epNum", epNum);
		
		EpisodeDTO episodeDTO = videoService.searchEpisode(episodeMap);
		if(episodeDTO!=null) {
			System.out.println(episodeDTO.toString());
		}
		session.setAttribute("episodeDTO", episodeDTO);
		
		mav.setViewName("/Admin/movie/episodeUpdateForm");
		return mav;
	}
	
	@PostMapping(value = "episodeUpdate")
	@ResponseBody
	public void episodeUpdate(@ModelAttribute EpisodeDTO episodeDTO) {
		
		System.out.println(episodeDTO.toString());
		episodeDTO.modifyDTO();
		System.out.println(episodeDTO.toString());
		videoService.episodeUpdate(episodeDTO);
		
	}
	
	@GetMapping(value = "addEpisodeForm")
	public ModelAndView addEpisodeForm(@RequestParam int seq, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.setAttribute("seq", seq);
		mav.setViewName("/Admin/movie/addEpisodeForm");
		return mav;
	}
	
	// 삭제
	@PostMapping(value = "videoDelete")
	@ResponseBody
	public void videoDelete(@RequestParam int seqMovie) {
		
		System.out.println("delete required."+seqMovie);
		videoService.dropTable(seqMovie); // 참조 무결성 때문에 drop이 먼저 수행되어야 함
		videoService.videoDelete(seqMovie);
	}
	@PostMapping(value = "episodeDelete")
	@ResponseBody
	public void episodeDelete(@RequestParam int seqMovie, @RequestParam int epNum) {
														// 어노테이션 한 번 더 붙여야 함
		System.out.println("episode delete required. seq = "+seqMovie);
		System.out.println("episode delete required. epnum = "+epNum);
		
		videoService.episodeDelete(seqMovie, epNum);
	}
	
}
