package zaksim.dao;

public interface ChallengeDao {

	// 기간 별 인증률
	void selectCertificationRate(int period);

	// 기간 별 신청 도전 수
	void selectChallengeNum(int period);

	// 누적 도전금
	void selectChallengeMony(int period);

	// 회원 수
//	void selectMemberNum(int period);

	// 기간 별 도전 성공률
	void selectSuccessNum(int period);

	// 기간 별 평균 도전금
	void selectAverageChallengeMony(int period);

	// 기간 별 종료 도전 수
	void selectEndNum(int period);

}
