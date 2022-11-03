package userpage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserpageController {
	
	private final String command = "/userpage.us";
	private String getPage = "/userpage";
	
	@RequestMapping(command)
	public String userpage() {
		return getPage;
	}

}
