package zaksim.dao;

import java.util.List;
import java.util.Map;

import zaksim.dto.MemberCount;

public interface MemberCountDao {
	
	// 기간 별 회원 수
	public List<MemberCount> selectMemberNum(Map<String, String> param);
	
	// 기간 별 회원 수
	public List<MemberCount> selectMemberNum2(Map<String, String> param);

}
