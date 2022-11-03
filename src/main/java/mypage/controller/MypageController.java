package mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
	private final String command = "/mypage.my";
	private String getPage = "/mypage";
	
	@RequestMapping(command)
	public String mypage() {
		return getPage;
	}

}
