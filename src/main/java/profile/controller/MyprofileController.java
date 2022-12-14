package profile.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import friend.model.FriendBean;
import friend.model.FriendDao;
import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class MyprofileController {
	
	private final String command = "/myprofile.pro";
	private String getPage = "/myprofile";
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private FriendDao friendDao;
	
	@RequestMapping(command)
	public String mypage(HttpSession session, Model model) {
		
		MemberBean login = (MemberBean)session.getAttribute("login");
		
		System.out.println(login.getNo());
		
		FriendBean myfriend = friendDao.getMyFriends(login.getNo());
		//System.out.println(friend.getFriends_no());
		
		//friends 친구 가져오기
		if(myfriend != null && myfriend.getFriends() != null) {
			String[] lists = myfriend.getFriends().split(",");
			
			List<MemberBean> friendsList = new ArrayList<MemberBean>();
			for(String x : lists) {
				//System.out.println(x);
				MemberBean friend = memberDao.getMemberByNo(x);
				friendsList.add(friend);
			}
			
			model.addAttribute("friendsList", friendsList);
		}
		
		//waits 친구 신청 목록 가져오기
		if(myfriend != null && myfriend.getWaits() != null) {

			String[] lists = myfriend.getWaits().split(",");

			List<MemberBean> waitsList = new ArrayList<MemberBean>();
			for(String x : lists) {
				//System.out.println(x);
				MemberBean friend = memberDao.getMemberByNo(x);
				waitsList.add(friend);
			}

			model.addAttribute("waitsList", waitsList);
		}
		
		
		
		
		return getPage;
		
		
		
	}

}
