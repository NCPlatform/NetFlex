package memberjoin.controller;


import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mailsend.service.MailSendService;
import member.service.MemberService;
import user.bean.UserDTO;

@Controller
public class MemberJoinController {

	@Autowired
	MailSendService mailSendService;
	
	@Autowired
	MemberService memberService;

	@GetMapping("mailAuth")
	@ResponseBody
	public String mailAuth(String mail, HttpServletResponse resp) throws Exception {
		
		System.out.println("여기까진 가짐");
		String authKey = mailSendService.sendAuthMail(mail); //사용자가 입력한 메일주소로 메일을 보냄
		memberService.registMailAuth(mail, authKey);	//메일보냄과 동시에 DB저장	
		return authKey;
	}



	// 자식창 생성
	@RequestMapping("/join/mailWindow.jsp")
	public String mailWindow(String mail, HttpServletResponse resp) throws Exception {
		return "join/mailWindow";  //step2.jsp화면에서 mail인증하기 버튼 누르면 자식창생김. 거기서 사용자는 authKey입력
	}
	//자식창에서 authKey맞는지확인
	@RequestMapping(value="/join/authKeyCompare.wow", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String authKeyCompare(UserDTO userDTO) {
		try{
			memberService.authKeyCompare(userDTO); //authKey는 사용자가 입력한 값
			return "authKeySame";
		} catch (Exception e) {
			return "somethingWrong";
		}
	}
	//다음버튼눌렀을 때 isAuth=1인지 확인
	@RequestMapping(value="/join/isMailAuthed.jsp" ,produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String isMailAuthed(String mail) {
		int isAuth= memberService.isMailAuthed(mail);
		if(isAuth==1) return "메일인증완";
		else return "인증안됨";
	}
}
