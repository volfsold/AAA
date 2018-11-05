package zaksim.login.service;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.ZakSimMemberDao;
import zaksim.dto.ZakSimMember;

/*
 * 작성일 : 2018.10.18
 * 작성자 : 권미현
 */
/**
 * 회원 관련 서비스
 */
@Service
public class ZakSimMemberServiceImpl implements ZakSimMemberService {

	@Autowired ZakSimMemberDao memberDao;
	

	@Override
	public boolean login(ZakSimMember memberDto) {
		
		if( memberDao.login(memberDto) == 1 ) {
			return true;
		} else {
			return false;			
		}
	}
	
	@Override
	public ZakSimMember memberInfo(ZakSimMember memberDto) {
		return memberDao.memberInfo(memberDto);
	}

	@Override
	public String findId(String name, String email) {
		Map<String, String> map = new HashMap<>();
		
		map.put("name", name);
		map.put("email", email);
		
		return memberDao.findId(map);
	}

	@Override
	public String findPw(String id, String name, String email) {
		String ranPw = null;
		
		Map<String, String> map = new HashMap<>();
		
		map.put("id", id);
		map.put("name", name);
		map.put("email", email);
		
		if ( memberDao.findPw(map) == 1 ) {
			ranPw = UUID.randomUUID().toString().replaceAll("-", ""); // - 제거
			ranPw = ranPw.substring(0, 10);
			Random ran = new Random();
			
//			for( int i = 0; i < 10; i++ ) {
//				ranPw = ranPw + ran.nextInt(10); // 0 ~ 9 까지 랜덤으로 숫자 넣기
//			}
			System.out.println("생성된 임시 비밀번호 : " + ranPw);
			map.put("ranPw", ranPw);
			memberDao.findPwResult(map);
		}
		return ranPw;
	}

	@Override
	public void jogin(ZakSimMember memberDto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean checkId(String id) {
		if (memberDao.checkId(id) == 0) {
			// 사용 가능한 ID일 경우
			return true;
		} else {
			// 중복된 ID 발견
			return false;
		}
	}

	@Override
	public boolean checkNick(String nick) {
		if (memberDao.checkNick(nick) == 0) {
			// 사용 가능한 닉네임일 경우
			return true;
		} else {
			// 중복된 닉네임 발견
			return false;
		}
	}

}
