package zaksim.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.VisitsDao;
import zaksim.dao.ZakSimMemberDao;

@Service
public class MStatisticsServiceImpl implements MStatisticsService {
	
	@Autowired ZakSimMemberDao zakSimMemberDao;
	@Autowired VisitsDao visitsDao;

	@Override
	public int viewJoinNum(String period) {
		Map<String, String> param = new HashMap<>();
		param.put("period", period);
		return zakSimMemberDao.selectJoinNum(param);
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
