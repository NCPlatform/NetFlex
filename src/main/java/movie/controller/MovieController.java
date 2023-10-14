package movie.controller;

import lombok.RequiredArgsConstructor;
import movie.bean.EpisodeDTO;
import movie.service.MovieService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/movie/")
@RequiredArgsConstructor
public class MovieController {

	private final MovieService movieService;
	
	@GetMapping(value = "home")
	public String movie(Model model, HttpSession httpSession) {
		//세션 처리부분
		//String email = (String) session.getAttribute("email");
		//int seqNick = (int) session.getAttribute("nickname");
		//테스트용 아이디
		String userEmail="admin@gmail.com";
		//테스트용 닉네임(프로필)
		int seqNick =29;
		model.addAttribute("movies",movieService.findAll());
		model.addAttribute("likeMovie",movieService.findLikedMovie(userEmail,seqNick));

		return "/user/home";
	}


	@ResponseBody
	@GetMapping(value = "episode")
	public List<EpisodeDTO> round(@RequestParam int seqMovie) {
		return movieService.getEpisode(seqMovie);
	}
}
