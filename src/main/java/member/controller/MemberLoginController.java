package member.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class MemberLoginController {

	private final String command = "/login.mem";
	private String getPage = "/login";
	private String gotoPage = "redirect:/myprofile.pro";

	@Autowired
	private MemberDao memberDao;

	// 카카오 로그인
	private String apiResult = null;
	@Autowired
	private KakaoLoginBO kakaoLoginBO;
	
	
	//login.jsp 페이지 호출
	@RequestMapping(value = command, method = RequestMethod.GET)
	public String login(Model model, HttpSession session) {

		/* 카카오 URL */
		String kakaoAuthUrl = kakaoLoginBO.getAuthorizationUrl(session);
		System.out.println("카카오:" + kakaoAuthUrl);		
		model.addAttribute("urlKakao", kakaoAuthUrl);

		/* 생성한 인증 URL을 View로 전달 */
		return getPage;
	}

	// 카카오 로그인 성공시 callback
	@RequestMapping(value = "/callbackKakao.mem", method = { RequestMethod.GET, RequestMethod.POST })
	public String callbackKakao(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) 
			throws Exception {
		System.out.println("로그인 성공 callbackKako");
		OAuth2AccessToken oauthToken;
		oauthToken = kakaoLoginBO.getAccessToken(session, code, state);	
		// 로그인 사용자 정보를 읽어온다
		apiResult = kakaoLoginBO.getUserProfile(oauthToken);

		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObj;

		jsonObj = (JSONObject) jsonParser.parse(apiResult);
		System.out.println("jsonObj"+jsonObj); //json 정보
		
		JSONObject response_obj = (JSONObject) jsonObj.get("kakao_account");	
		JSONObject response_obj2 = (JSONObject) response_obj.get("profile");
		// 프로필 조회
		String email = (String) response_obj.get("email");
		String birthday = (String) response_obj.get("birthday");
		String age_range = (String) response_obj.get("age_range");
		String name = (String) response_obj2.get("nickname");

		
		// 세션에 사용자 정보 등록
		// session.setAttribute("islogin_r", "Y");
		session.setAttribute("signIn", apiResult);
		//session.setAttribute("email", email);
		//session.setAttribute("name", name);
		
		System.out.println("birthday "+birthday); //0919
		System.out.println("age_range "+age_range); //30~39

		
		// 처음 로그인 한다면 사용자 정보 DB에 인서트
		if(memberDao.emailDuplCheck(email) == 0) {
			MemberBean member = new MemberBean();
			member.setEmail(email);
			member.setName(name);
			member.setSocial("kakao");
			memberDao.registerMemberBySocial(member);
		}
		
		MemberBean member = memberDao.getMemberByEmail(email);
		session.setAttribute("login", member);

		return "redirect:/loginSuccess.mem";
	}

	// 소셜 로그인 성공 페이지
	@RequestMapping("/loginSuccess.mem")
	public String loginSuccess() {
		return "/loginSuccess";
	}
	
	
	
	
	//login.jsp -> 일반 로그인
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
				//String destination = (String)session.getAttribute("destination");
				//return destination;

				/* 로그인이 필요한 페이지에 설정할 코드
				if(session.getAttribute("login") == null) { //로그인 안했으면

					session.setAttribute("destination", "redirect:/"); //로그인 한 후 향할 주소도 같이 설정해 보냄
					return "redirect:/login.mem";

				}else {

				}
				 */

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
