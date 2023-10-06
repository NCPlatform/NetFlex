package user.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import user.bean.MovieDTO;
import user.service.UserService;

@Controller
@RequestMapping(value = "user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@GetMapping(value = "search")
	public String serach() {
		return "/user/search";
	}
	
	@GetMapping(value = "home")
	public String home() {
		return "/user/home";
	}
	@GetMapping(value = "home2")
	public String home2() {
		return "/user/home2";
	}
	
	@GetMapping(value = "header")
	public String header() {
		return "/user/header";
	}
	
	@GetMapping(value = "footer")
	public String footer() {
		return "/user/footer";
	}
	@GetMapping(value = "series")
	public String series() {
		return "/user/series";
	}
	@GetMapping(value = "movie")
	public String movie() {
		return "/user/movie";
	}
	@GetMapping(value = "newContents")
	public String newContents() {
		return "/user/newContents";
	}
	@GetMapping(value = "dibsList") 
	public String dibsList() { 
		return "/user/dibsList"; 
	}
	@GetMapping(value = "watch") 
	public String watch() { 
		return "/user/watch"; 
	}
	@PostMapping(value = "movie")
	@ResponseBody
	public void movie(@ModelAttribute MovieDTO movieDTO) {
		userService.movie(movieDTO);
	}
	@GetMapping(value = "list")
	public String list(@RequestParam(required = false, defaultValue = "1") String pg, Model model) {
		model.addAttribute("pg", pg);

		return "/user/list";
	}
	@PostMapping(value = "MovieList")
	@ResponseBody
	public Map<String, Object> movieList(@RequestParam String pg) {
		return userService.movieList(pg);
	}
}
