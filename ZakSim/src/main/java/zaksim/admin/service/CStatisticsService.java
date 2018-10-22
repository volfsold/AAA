package zaksim.admin.service;

import java.util.List;

public interface CStatisticsService {
	
	// 인증률 가져오기
	public int viewCertificationRate(int period);
	
	// 도전수 정보 가져오기
	public List<Integer> viewChallengeNum(int period);
	
	// 도전금 평균 정보 가져오기
	public List<Integer> viewAverageChallengeMoney(int period);

	// 회원수 정보 가져오기
	// MStatistics 메소드 사용?
	public List<Integer> viewMemberNum(int period);
}
