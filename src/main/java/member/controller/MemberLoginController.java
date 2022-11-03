package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class MemberLoginController {
	
	private final String command = "/login.mem";
	private String getPage = "/login";
	private String gotoPage = "redirect:/myprofile.pro";
	
	@Autowired
	private MemberDao memberDao;
	
	//login.jsp 페이지 호출
	@RequestMapping(value = command, method = RequestMethod.GET)
	public String login() {
		return getPage;
	}
	
	//login.jsp -> 로그인
	@RequestMapping(value = command, method = RequestMethod.POST)
	public String login(MemberBean member,
			HttpServletResponse response,
			HttpSession session) throws IOException {

		PrintWriter pw = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		
		int result = memberDao.emailDuplCheck(member.getEmail());
		if(result == 1) { //가입한 회원인 경우
			MemberBean login = memberDao.login(member);
			if(login == null) { //이메일과 비밀번호가 일치하지 않은 경우
				//System.out.println("login "+login);
				pw.println("<script>");
				pw.println("alert('비밀번호가 일치하지 않습니다.'); location.href='login.mem'");
				pw.println("</script>");
				pw.flush();
			}else { //이메일과 비밀번호가 일치하는 경우 => 로그인
				//System.out.println("login.getName() "+login.getName());
				session.setAttribute("login", login);

			}
			
		}else { //가입하지 않은 회원인 경우
			pw.println("<script>");
			pw.println("alert('가입하지 않은 회원입니다'); location.href='login.mem'");
			pw.println("</script>");
			pw.flush();
		}
		
		return gotoPage;
	}

}
