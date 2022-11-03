package friend.model;

public class FriendBean {
	private String fno;
	private String friends_no; //수락한 친구들 번호
	private String wait_friends; //대기 친구들 번호
	
	public String getFno() {
		return fno;
	}
	public void setFno(String fno) {
		this.fno = fno;
	}
	public String getFriends_no() {
		return friends_no;
	}
	public void setFriends_no(String friends_no) {
		this.friends_no = friends_no;
	}
	public String getWait_friends() {
		return wait_friends;
	}
	public void setWait_friends(String wait_friends) {
		this.wait_friends = wait_friends;
	}
	
	

}
