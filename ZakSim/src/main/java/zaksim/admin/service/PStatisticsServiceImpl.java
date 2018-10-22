package zaksim.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.ChallengeDao;
import zaksim.dao.ProfitDao;
import zaksim.dao.ZakSimMemberDao;

@Service
public class PStatisticsServiceImpl implements PStatisticsService{
	
	@Autowired ChallengeDao challengeDao;
	@Autowired ProfitDao profitDao;
	@Autowired ZakSimMemberDao zakSimMemberDao;
	

	@Override
	public int viewSuccessRate(int period) {
		// TODO Auto-generated method stub
		challengeDao.selectChallengeNum(period);
		challengeDao.selectSuccessNum(period);
		return 0;
	}

	@Override
	public List<Integer> viewChallengeMoney(int period) {
		// TODO Auto-generated method stub
		challengeDao.selectChallengeMony(period);
		return null;
	}

	@Override
	public List<Integer> viewProfits(int period) {
		// TODO Auto-generated method stub
		profitDao.selectProfits(period);
		return null;
	}

	@Override
	public List<Integer> viewMemberNum(int period) {
		// TODO Auto-generated method stub
		zakSimMemberDao.selectMemberNum(period);
		return null;
	}

	@Override
	public List<Integer> viewEndChallenge(int period) {
		// TODO Auto-generated method stub
		challengeDao.selectEndNum(period);
		return null;
	}

}
