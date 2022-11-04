package friend.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import friend.model.FriendBean;
import friend.model.FriendDao;
import member.model.MemberBean;

@Controller
public class FriendWithdrawController {

	public final String command = "/withdraw.fr";
	public String gotoPage = "redirect:/profile.pro";
	
	@Autowired
	private FriendDao friendDao;

	@RequestMapping(command)
	public String withdraw(@RequestParam("no") String no, HttpSession session) {
		
		MemberBean login = (MemberBean)session.getAttribute("login");

		//친구 신청 철회
		FriendBean bean = new FriendBean();
		bean.setMno(no); //상대방 번호

		FriendBean myfriend = friendDao.getMyFriends(no);

		String[] list = myfriend.getWaits().split(",");
		String newList = "";
		int i = 0;
		for(String x : list) {
			//System.out.println(x);
			i += 1;
			if(x.equals(login.getNo()) == false) { //로그인 유저가 아니라면 승인대기 리스트에 추가
				if(i == 1 ) {
					newList += x;
				}else {
					newList += (","+x);
				}
			}
		}

		bean.setWaits(newList);
		friendDao.updateWaits(bean);

		return gotoPage+"?no="+no;
	}

}
