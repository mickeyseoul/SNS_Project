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
public class FriendCancelController {

	private final String command = "/cancel.fr";
	private String gotoPage = "redirect:/profile.pro";

	@Autowired
	private FriendDao friendDao;

	@RequestMapping(command)
	public String cancel(@RequestParam("no") String no, HttpSession session) {

		MemberBean login = (MemberBean)session.getAttribute("login");

		//친구취소
		FriendBean bean = new FriendBean();
		bean.setMno(login.getNo()); //내 번호

		FriendBean myfriend = friendDao.getMyFriends(login.getNo());

		String[] list = myfriend.getFriends().split(",");
		String newList = "";
		
		int i = 0;
		for(String x : list) {
			//System.out.println(x);
			i += 1;
			if(x.equals(no) == false) { //상대방 번호가 아니라면 친구 리스트에 추가
				if(i == 1 ) {
					newList += x;
				}else {
					newList += (","+x);
				}
			}
		}

		bean.setFriends(newList); //친구 번호
		friendDao.updateFriendsList(bean);


		//상대방 친구취소
		FriendBean bean2 = new FriendBean();
		bean2.setMno(no);

		FriendBean myfriend2 = friendDao.getMyFriends(no);

		String[] list2 = myfriend2.getFriends().split(",");
		String newList2 = "";
		
		i = 0;
		for(String x : list2) {
			//System.out.println(x);
			i += 1;
			if(x.equals(login.getNo()) == false) {
				if(i == 1 ) {
					newList2 += x;
				}else {
					newList2 += (","+x);
				}
			}
		}

		bean2.setFriends(newList2);
		friendDao.updateFriendsList(bean2);

		return gotoPage+"?no="+no;
	}

}












