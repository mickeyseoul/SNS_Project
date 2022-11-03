package mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageSettingsController {
	
	private final String command = "/settings.my";
	private String getPage = "/settings";
	
	@RequestMapping(command)
	public String setting() {
		return getPage;
	}

}
