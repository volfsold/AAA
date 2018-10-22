package zaksim.admin.service;

import java.util.List;

public interface PStatisticsService {
	
	// 도전 성공률 가져오기
	public int viewSuccessRate(int period);
	
	// 누적 도전금 정보 가져오기
	public List<Integer> viewChallengeMoney(int period);
	
	// 수수료 수익 정보 가져오기
	public List<Integer> viewProfits(int period);

	// 회원수 정보 가져오기
	// MStatistics 메소드 사용?
	public List<Integer> viewMemberNum(int period);
	
	// 종료 도전수 가져오기
	public List<Integer> viewEndChallenge(int period);

}
