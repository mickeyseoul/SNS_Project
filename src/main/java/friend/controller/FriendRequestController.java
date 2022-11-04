package friend.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import friend.model.FriendBean;
import friend.model.FriendDao;
import member.model.MemberBean;

@Controller
public class FriendRequestController {
	
	private final String command = "/request.fr";
	private String getPage = "redirect:/profile.pro";
	
	@Autowired
	private FriendDao friendDao;
	
	//친구 신청 버튼 클릭
	@RequestMapping(command)
	public String request(@RequestParam("no") String no, HttpSession session) {
		
		MemberBean login = (MemberBean)session.getAttribute("login");
		FriendBean bean = new FriendBean();
		bean.setMno(no); //상대방 번호
		
		FriendBean myfriend = friendDao.getMyFriends(no);
		if(myfriend != null) { //이미 대기 리스트 있는 경우 -> 업데이트
			String newList = "";
			if(myfriend.getWaits() != null) {
				newList = myfriend.getWaits()+","+login.getNo();
			}else {
				newList = login.getNo();
			}
			bean.setWaits(newList);
			friendDao.updateWaits(bean);
			
		}else { //대기 리스트 없는 경우 -> 인서트
			bean.setWaits(login.getNo()); //친구 번호
			friendDao.insertWaits(bean);
		}
		
		return getPage+"?no="+no;
	}

}
