package movie.controller;

import lombok.RequiredArgsConstructor;
import movie.bean.MovieDTO;
import movie.service.MovieService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value = "/movie/")
@RequiredArgsConstructor
public class MovieController {
	@Autowired
	private MovieService movieService;
	
	@GetMapping(value = "home")
	public String movie(Model model) {
		model.addAttribute("movies",movieService.findAll());
		return "/user/home";
	}
}
