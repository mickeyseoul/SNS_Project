package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import member.model.MemberDao;

@Controller
public class MemberDeleteController {
	
	private final String command = "/delete.mem";
	private String gotoPage = "redirect:/list.mem";
	
	@Autowired
	private MemberDao memberDao;
	
	//회원 리스트에서
	@RequestMapping(value = command, method = RequestMethod.GET)
	public String delete(@RequestParam("no") String no) {
		
		memberDao.deleteMember1(no);
		
		return gotoPage;
	}
	
	

}
