package user.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import user.bean.EpisodeDTO;
import user.bean.MovieDTO;
import user.bean.NicknameDTO;
import user.service.UserService;

@Controller
@RequestMapping("movie")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping(value = "")
	public String index() {
		return "/User/index";
	}
	
	@PostMapping(value="getNickname")
	@ResponseBody
	public List<NicknameDTO> getNickname (HttpSession httpSession) {
		List<NicknameDTO> list = userService.getNickname(String.valueOf(httpSession.getAttribute("email")));
		
		return list;
	}
	
	@PostMapping(value="setNickname")
	@ResponseBody
	public void setNickname(HttpSession httpSession, @RequestParam String seqNick, @RequestParam String nickname) {
		httpSession.setAttribute("seqNick", seqNick);
		httpSession.setAttribute("nickname", nickname);
	}
	
	@GetMapping(value="home")
	public String movie(HttpSession httpSession, Model model) {
		String userEmail = (String) httpSession.getAttribute("email");
		String seqNick = String.valueOf(httpSession.getAttribute("seqNick"));
		
		model.addAttribute("movies",userService.findAll());
		model.addAttribute("likeMovie",userService.findLikedMovie(userEmail,Integer.parseInt(seqNick)));
		return "/User/home";
	}
	
	@GetMapping(value = "/episode")
	@ResponseBody
	public List<EpisodeDTO> round(@RequestParam int seqMovie) {
		return userService.getEpisode(seqMovie);
	}
	
	@GetMapping(value = "/search")
	@ResponseBody
	public List<MovieDTO> search(@RequestParam String value) {
		return userService.search(value);
	}
	
	@GetMapping(value = "series")
	public String series() {
		return "/User/series";
	}
	@GetMapping(value = "movie")
	public String movie() {
		return "/User/movie";
	}
	
	@GetMapping(value = "dibsList") 
	public String dibsList(HttpSession httpSession, Model model) {
		String userEmail = (String) httpSession.getAttribute("email");
		String seqNick = String.valueOf(httpSession.getAttribute("seqNick"));
		
		model.addAttribute("likeMovie",userService.findLikedMovie(userEmail,Integer.parseInt(seqNick)));
		return "/User/dibsList"; 
	}
	
	@GetMapping(value = "watch") 
	public String watch() { 
		return "/User/watch"; 
	}
	@GetMapping(value = "watchAll") 
	public String watchAll() { 
		return "/User/watchAll"; 
	}
	
	@PostMapping(value = "getMovie")
	@ResponseBody
	public List<MovieDTO> getMovie(){
		return userService.getMovie();
	}
	
	@PostMapping(value = "episode")
	@ResponseBody
	public List<MovieDTO> episode(@RequestParam String seqMovie) {
		return userService.episode(Integer.parseInt(seqMovie));
	}
	
	@PostMapping(value = "getSeries")
	@ResponseBody
	public List<MovieDTO> getSeries(){
		return userService.getSerise();
	}
	
	@PostMapping(value = "modal")
	@ResponseBody
	public List<MovieDTO> modal(@RequestParam String seqMovie) {
		return userService.modal(Integer.parseInt(seqMovie));
	}

}
