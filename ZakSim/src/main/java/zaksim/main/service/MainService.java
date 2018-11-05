package zaksim.main.service;

import zaksim.dto.Board;
import zaksim.dto.Challenge;
import zaksim.dto.CommunityGroup;
import zaksim.dto.ZakSimMember;

public interface MainService {

	
	// 도전 정보 가져오기
	public Challenge chalInfo(ZakSimMember member);
	
//	유저 랭킹 가져오기 
//	도전 달성 결과+유저 = 매개변수? /물어보기
	public ZakSimMember userRank();
	
	// 인기 그룹 가져오기
	public CommunityGroup groupRank();
	
	// 최신 인증글 가져오기
	public Board citations();
}
