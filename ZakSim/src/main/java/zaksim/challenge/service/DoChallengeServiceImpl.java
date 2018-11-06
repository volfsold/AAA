package zaksim.challenge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.ZakSimMemberDao;
import zaksim.dto.Challenge;
import zaksim.dto.Payment;
import zaksim.dto.ZakSimMember;

@Service
public class DoChallengeServiceImpl implements DoChallengeService{

	@Autowired ZakSimMemberDao memberDao;

	
	// 회원정보 가져오기
	@Override
	public ZakSimMember userInfo(ZakSimMember user) {
		
		
		return memberDao.memberInfo(user);
	}

	// 도전 정보 입력
	@Override
	public void setCahllengeInfo(ZakSimMember user) {
		// TODO Auto-generated method stub
		
	}

	// 도전 정보 가져오기
	@Override
	public Challenge getChallengeInfo(ZakSimMember user) {
		// TODO Auto-generated method stub
		return null;
	}

	// 결제 정보 입력
	@Override
	public void setPayment(ZakSimMember user) {
		// TODO Auto-generated method stub
		
	}

	// 결제 정보 가져오기
	@Override
	public Payment getPayment(ZakSimMember user) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
}
