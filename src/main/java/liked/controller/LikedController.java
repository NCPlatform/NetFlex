package liked.controller;

import javax.servlet.http.HttpSession;
import liked.service.LikedService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequiredArgsConstructor
public class LikedController {

    private final LikedService likedService;
    @GetMapping("/like/{seqMovie}")
    public ResponseEntity<Void> likeMovie(HttpSession session, @PathVariable int seqMovie){
        //세션 처리부분
        //String email = (String) session.getAttribute("email");
        //int seqNick = (int) session.getAttribute("nickname");
        //테스트용 아이디
        String userEmail="admin@gmail.com";
        //테스트용 닉네임(프로필)
        int seqNick =29;
        likedService.liked(userEmail,seqMovie,seqNick);
        return ResponseEntity.ok().build();
    }
    @GetMapping("/isLike/{seqMovie}")
    public ResponseEntity<Boolean> isLike(HttpSession session, @PathVariable int seqMovie){
        //세션 처리부분
        //String email = (String) session.getAttribute("email");
        //int seqNick = (int) session.getAttribute("nickname");
        //테스트용 아이디
        String userEmail="admin@gmail.com";
        //테스트용 닉네임(프로필)
        int seqNick =29;
        return ResponseEntity.ok().body(likedService.isLiked(userEmail, seqMovie, seqNick));
    }

}
