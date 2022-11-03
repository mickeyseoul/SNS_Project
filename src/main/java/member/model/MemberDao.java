package member.model;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("memberDao")
public class MemberDao {
	
	private String namespace="member.model.MemberDao";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//회원가입
	public void registerMember(MemberBean member) {
		sqlSessionTemplate.insert(namespace+".RegisterMember", member);
		
	}
	
	public int emailDuplCheck(String inputemail) {
		int result = sqlSessionTemplate.selectOne(namespace+".EmailDuplCheck", inputemail);
		return result;
	}
	
	
	//회원리스트
	public List<MemberBean> getAllMembers() {
		List<MemberBean> lists = new ArrayList<MemberBean>();
		lists = sqlSessionTemplate.selectList(namespace+".GetAllMembers");
		return lists;
	}

	public void deleteMember(String no) {
		sqlSessionTemplate.delete(namespace+".DeleteMember", no);
		
	}
	
	//로그인
	public MemberBean login(MemberBean member) {
		MemberBean login = sqlSessionTemplate.selectOne(namespace+".Login", member);
		return login;
	}

	//마이프로필
	public void updateBackground(MemberBean member) {
		sqlSessionTemplate.update(namespace+".UpdateBackground", member);
		
	}

	public void updateProfile(MemberBean member) {
		sqlSessionTemplate.update(namespace+".UpdateProfile", member);
		
	}

	public MemberBean getMemberByNo(String no) {
		MemberBean member = sqlSessionTemplate.selectOne(namespace+".GetMemberByNo", no);
		return member;
	}
	
	//회원정보 수정
	public void modifyMember(MemberBean member) {
		sqlSessionTemplate.update(namespace+".ModifyMember", member);
		
	}
	
	
	
	
	


}





























