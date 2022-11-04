package profile.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

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
		FriendBean myfriend = friendDao.getMyFriends(no);

		if(myfriend != null && myfriend.getFriends() != null) {

			String[] lists = myfriend.getFriends().split(",");

			List<MemberBean> friendsList = new ArrayList<MemberBean>();
			for(String x : lists) {
				//System.out.println(x);
				MemberBean friend = memberDao.getMemberByNo(x);
				friendsList.add(friend);
			}

			model.addAttribute("ufriends", myfriend.getFriends());
			model.addAttribute("friendsList", friendsList);
		}

		//해당 유저의 친구 대기 목록 가져오기
		if(myfriend != null && myfriend.getWaits() != null) {
			String uwaits = myfriend.getWaits();
			model.addAttribute("uwaits", uwaits);
		}

		model.addAttribute("member", member);

		return getPage;
	}

}
