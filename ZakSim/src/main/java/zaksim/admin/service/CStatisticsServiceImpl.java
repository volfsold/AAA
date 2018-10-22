package zaksim.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.ChallengeDao;

@Service
public class CStatisticsServiceImpl implements CStatisticsService {
	
	@Autowired ChallengeDao challengeDao;

	@Override
	public int viewCertificationRate(int period) {
		// TODO Auto-generated method stub
		challengeDao.selectCertificationRate(period);
		return 0;
	}

	@Override
	public List<Integer> viewChallengeNum(int period) {
		// TODO Auto-generated method stub
		challengeDao.selectChallengeNum(period);
		return null;
	}

	@Override
	public List<Integer> viewAverageChallengeMoney(int period) {
		// TODO Auto-generated method stub
		challengeDao.selectAverageChallengeMony(period);
		return null;
	}

	@Override
	public List<Integer> viewMemberNum(int period) {
		// TODO Auto-generated method stub
//		challengeDao.selectMemberNum(period);
		return null;
	}

}
