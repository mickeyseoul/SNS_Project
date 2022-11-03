package member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberFindIdController {
	
	private final String command = "/findId.mem";
	private String getPage = "/findIdForm";
	
	@RequestMapping(command)
	public String form() {
		return getPage;
	}

}
