package user.controller;

import javax.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import user.service.LikedService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequiredArgsConstructor
public class LikedController {

	@Autowired
    private LikedService likedService;
    
	@GetMapping("/like/{seqMovie}")
    public ResponseEntity<Object> likeMovie(HttpSession httpSession, @PathVariable int seqMovie){
    	
        String userEmail=(String) httpSession.getAttribute("email");
        int seqNick = Integer.parseInt(String.valueOf(httpSession.getAttribute("seqNick")));
        likedService.liked(userEmail,seqMovie,seqNick);
        return ResponseEntity.ok().build();
    }
	
    @GetMapping("/isLike/{seqMovie}")
    public ResponseEntity<Object> isLike(HttpSession httpSession, @PathVariable int seqMovie){

        String userEmail=(String) httpSession.getAttribute("email");
        int seqNick = Integer.parseInt(String.valueOf(httpSession.getAttribute("seqNick")));
        return ResponseEntity.ok().body(likedService.isLiked(userEmail, seqMovie, seqNick));
    }

}
