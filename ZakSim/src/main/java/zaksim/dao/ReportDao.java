package zaksim.dao;

import zaksim.dto.ZakSimMember;

public interface ReportDao {

	// 신고 상세 보기
	void selectReport(ZakSimMember member);

}
