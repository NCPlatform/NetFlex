package user.controller;

import lombok.RequiredArgsConstructor;
import movie.service.MovieService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import user.service.UserService;

@Controller
@RequestMapping(value = "user")
@RequiredArgsConstructor
public class UserController {

	private final UserService userService;

	private final MovieService movieService;
	
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
	public String dibsList(Model model) {
		//세션 처리부분
		//String email = (String) session.getAttribute("email");
		//int seqNick = (int) session.getAttribute("nickname");
		//테스트용 아이디
		String userEmail="admin@gmail.com";
		//테스트용 닉네임(프로필)
		int seqNick =29;
		model.addAttribute("likeMovie",movieService.findLikedMovie(userEmail,seqNick));
		return "/user/dibsList"; 
	}
	@GetMapping(value = "watch") 
	public String watch() { 
		return "/user/watch"; 
	}
	@GetMapping(value = "watchAll") 
	public String watchAll() { 
		return "/user/watchAll"; 
	}

}
