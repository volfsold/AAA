package zaksim.challenge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.ChallengeDao;
import zaksim.dao.ZakSimMemberDao;
import zaksim.dto.Challenge;
import zaksim.dto.Payment;
import zaksim.dto.ZakSimMember;

@Service
public class DoChallengeServiceImpl implements DoChallengeService{

	@Autowired ZakSimMemberDao memberDao;
	@Autowired ChallengeDao challengeDao;
	
	// 회원정보 가져오기
	@Override
	public ZakSimMember userInfo(ZakSimMember user) {
		
		
		return memberDao.memberInfo(user);
	}

	// 도전 정보 입력
	@Override
	public void setCahllengeInfo(Challenge chal) {
		
		
		
	}

	// 도전 정보 가져오기
	@Override
	public Challenge getChallengeInfo(ZakSimMember user) {
		// TODO Auto-generated method stub
		return null;
	}

	// 결제 정보 입력
	@Override
	public void setPayment(Payment pay) {
		// TODO Auto-generated method stub
		
	}

	// 결제 정보 가져오기
	@Override
	public Payment getPayment(ZakSimMember user) {
		// TODO Auto-generated method stub
		return null;
	}

	
	// insert 매개변수 시퀀스 가져오기
	@Override
	public int getSeqNextval() {
		
		
		return challengeDao.selectSeq();
	}
	
	
	
	
}
