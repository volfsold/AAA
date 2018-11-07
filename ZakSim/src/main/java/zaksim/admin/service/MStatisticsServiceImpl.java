package zaksim.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.MemberCountDao;
import zaksim.dao.VisitsDao;
import zaksim.dao.ZakSimMemberDao;
import zaksim.dto.MStatistics;
import zaksim.dto.MemberCount;
import zaksim.dto.Visits;

@Service
public class MStatisticsServiceImpl implements MStatisticsService {
	
	@Autowired ZakSimMemberDao zakSimMemberDao;
	@Autowired MemberCountDao memberCountDao;
	@Autowired VisitsDao visitsDao;

	
	@Override
	public int viewJoinNum(String startDate, String endDate) {
		Map<String, String> param = new HashMap<>();
		param.put("startDate", startDate);
		param.put("endDate", endDate);
		return zakSimMemberDao.selectJoinNum(param);
	}

	@Override
	public List<MemberCount> viewMemberNum(String startDate, String endDate) {
		Map<String, String> param = new HashMap<>();
		param.put("startDate", startDate);
		param.put("endDate", endDate);
		return memberCountDao.selectMemberNum(param);
	}

	@Override
	public List<Visits> viewVisitsNum(String startDate, String endDate) {
		Map<String, String> param = new HashMap<>();
		param.put("startDate", startDate);
		param.put("endDate", endDate);
		return visitsDao.selectVisitsNum(param);
	}

	@Override
	public List<MStatistics> viewDetailList(String startDate, String endDate) {
		Map<String, String> param = new HashMap<>();
		param.put("startDate", startDate);
		param.put("endDate", endDate);
		return zakSimMemberDao.selectMStatisticsDetailData(param);
	}
}
