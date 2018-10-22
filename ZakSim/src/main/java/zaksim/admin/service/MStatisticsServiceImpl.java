package zaksim.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.VisitsDao;
import zaksim.dao.ZakSimMemberDao;

@Service
public class MStatisticsServiceImpl implements MStatisticsService {
	
	@Autowired ZakSimMemberDao zakSimMemberDao;
	@Autowired VisitsDao visitsDao;

	@Override
	public int viewJoinNum(int period) {
		// TODO Auto-generated method stub
		zakSimMemberDao.selectJoinNum(period);
		return 0;
	}

	@Override
	public List<Integer> viewMemberNum(int period) {
		// TODO Auto-generated method stub
		zakSimMemberDao.selectMemberNum(period);
		return null;
	}

	@Override
	public List<Integer> viewVisitsNum(int period) {
		// TODO Auto-generated method stub
		visitsDao.selectVistsNum(period);
		return null;
	}

}
