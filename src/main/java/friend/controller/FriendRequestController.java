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
	
	@RequestMapping(command)
	public String request(@RequestParam("no") String no, HttpSession session) {
		
		MemberBean login = (MemberBean)session.getAttribute("login");
		FriendBean bean = new FriendBean();
		bean.setFno(login.getNo()); //내 번호
		
		//친구 요청 처리 작업 추가해야 함!!!
		
		
		//1 나에게 친구 추가
		FriendBean myfriend = friendDao.getMyFriends(login.getNo());
		
		if(myfriend != null) { //이미 친구 리스트 있는 경우 -> 업데이트
			if(myfriend.getFriends_no() != null) {
				String newList = myfriend.getFriends_no()+","+no;
				bean.setFriends_no(newList);
				friendDao.updateFriendsList(bean);
			}else {
				String newList = no;
				bean.setFriends_no(newList);
				friendDao.updateFriendsList(bean);
				
			}
			
		}else { //친구 리스트 없는 경우 -> 인서트
			bean.setFriends_no(no); //친구 번호
			friendDao.insertFriend(bean);
		}
		
		
		//2 상대방에 나를 친구 추가
		FriendBean bean2 = new FriendBean();
		bean2.setFno(no); //친구 번호
		
		FriendBean friend = friendDao.getMyFriends(no);
		
		if(friend != null) { //이미 친구 리스트 있는 경우 -> 업데이트
			if(friend.getFriends_no() != null) {
				String newList = friend.getFriends_no()+","+login.getNo();
				bean2.setFriends_no(newList);
				friendDao.updateFriendsList(bean2);
			}else {
				String newList = login.getNo();
				bean2.setFriends_no(newList);
				friendDao.updateFriendsList(bean2);
			}
			
		}else { //친구 리스트 없는 경우 -> 인서트
			bean2.setFriends_no(login.getNo()); //내 번호
			friendDao.insertFriend(bean2);
		}
		
		return getPage+"?no="+no;
	}

}
