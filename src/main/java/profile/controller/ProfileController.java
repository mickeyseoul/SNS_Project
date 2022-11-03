package profile.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import friend.model.FriendBean;
import friend.model.FriendDao;
import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class ProfileController {

	private final String command = "/profile.pro";
	private String getPage = "/profile";

	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private FriendDao friendDao;

	@RequestMapping(command)
	public String userpage(@RequestParam("no") String no, Model model) {

		MemberBean member = memberDao.getMemberByNo(no);

		//해당 프로필 친구 목록 가져오기
		FriendBean myfriend = friendDao.getMyFriends(member.getNo());
		//System.out.println(friend.getFriends_no());

		if(myfriend != null && myfriend.getFriends_no() != null) {

			String[] lists = myfriend.getFriends_no().split(",");

			List<MemberBean> friendsList = new ArrayList<MemberBean>();
			for(String x : lists) {
				//System.out.println(x);
				MemberBean friend = memberDao.getMemberByNo(x);
				friendsList.add(friend);
			}

			model.addAttribute("myfriend", myfriend);
			model.addAttribute("friendsList", friendsList);
		}		

		model.addAttribute("member", member);
		
		

		return getPage;
	}

}
