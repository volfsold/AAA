package zaksim.dao;

import java.util.List;

import zaksim.dto.Report;
import zaksim.dto.ZakSimMember;

public interface ReportDao {

	// 신고 상세 보기
	List<Report> selectReport(ZakSimMember member);

}
