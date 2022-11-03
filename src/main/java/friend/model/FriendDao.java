package friend.model;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("friendDao")
public class FriendDao {
	
	private String namespace = "friend.model.FriendDao";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//나의 친구 리스트
	public FriendBean getMyFriends(String no) {
		FriendBean friend = sqlSessionTemplate.selectOne(namespace+".GetMyFriends", no);
		return friend;
	}

	//나에게 친구 추가
	public void updateFriendsList(FriendBean bean) {
		sqlSessionTemplate.update(namespace+".UpdateFriendsList", bean);
		
	}
	
	public void insertFriend(FriendBean bean) {
		sqlSessionTemplate.insert(namespace+".InsertFriend", bean);
		
	}
	
	

}
