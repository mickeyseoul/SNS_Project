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
	
	public void deleteMember1(String no) {
		sqlSessionTemplate.delete(namespace+".DeleteMember1", no);
		
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
	public int checkEmailPassword(MemberBean member) {
		int result = sqlSessionTemplate.selectOne(namespace+".CheckEmailPassword", member);
		return result;
	}
	
	public int modifyMember(MemberBean member) {
		int result = sqlSessionTemplate.update(namespace+".ModifyMember", member);
		return result;
		
	}

	public int deactivateMember(MemberBean member) {
		int result = sqlSessionTemplate.update(namespace+".DeactivateMember", member);
		return result;
	}
	
	public int deleteMember(MemberBean member) {
		int result = sqlSessionTemplate.delete(namespace+".DeleteMember", member);
		return result;
	}

	public void updateIntro(MemberBean member) {
		sqlSessionTemplate.update(namespace+".UpdateIntro", member);
		
	}
	
	// 소셜 로그인
	public void registerMemberBySocial(MemberBean member) {
		sqlSessionTemplate.insert(namespace+".RegisterMemberBySocial", member);
		
	}

	public MemberBean getMemberByEmail(String email) {
		MemberBean member = sqlSessionTemplate.selectOne(namespace+".GetMemberByEmail", email);
		return member;
	}

	//아이디 비번 찾기
	public void updatePassword(MemberBean member) {
		sqlSessionTemplate.update(namespace+".UpdatePassword", member);
		
	}

	public MemberBean findId(MemberBean member) {
		MemberBean bean = sqlSessionTemplate.selectOne(namespace+".FindId", member);
		return bean;
	}

	public MemberBean findPassword(MemberBean member) {
		MemberBean bean = sqlSessionTemplate.selectOne(namespace+".FindPassword", member);
		return bean;
	}



	
	
	


}





























