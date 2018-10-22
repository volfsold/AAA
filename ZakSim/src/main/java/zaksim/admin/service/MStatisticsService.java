package zaksim.admin.service;

import java.util.List;

public interface MStatisticsService {
	
	// 가입 인원 가져오기
	public int viewJoinNum(int period);
	
	// 회원수 정보 가져오기
	public List<Integer> viewMemberNum(int period);
	
	// 방문수 정보 가져오기
	public List<Integer> viewVisitsNum(int period);

}
