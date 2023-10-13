package movie.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import movie.bean.EpisodeDTO;
import movie.service.MovieService;

@Controller
@RequestMapping(value = "/movie/")
@RequiredArgsConstructor
public class MovieController {

	private final MovieService movieService;
	
	@GetMapping(value = "home")
	public String movie(Model model) {
		model.addAttribute("movies",movieService.findAll());
		return "/user/home";
	}


	@ResponseBody
	@GetMapping(value = "episode")
	public List<EpisodeDTO> round(@RequestParam int seqMovie) {
		System.out.println("seqMovie = " + seqMovie);
		return movieService.getEpisode(seqMovie);
	}
}
