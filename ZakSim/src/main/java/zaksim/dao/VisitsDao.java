package zaksim.dao;

import java.util.List;
import java.util.Map;

import zaksim.dto.Visits;

public interface VisitsDao {

	// 기간 별 방문 수
	public List<Visits> selectVisitsNum(Map<String, String> param);
	
	// 기간 별 방문 수
	public List<Visits> selectVisitsNum2(Map<String, String> param);

}
