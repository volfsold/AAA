package zaksim.dao;

import zaksim.dto.ZakSimMember;

public interface ZakSimMemberDao {
	
	// 로그인
	// 아이디, 비밀번호 일치하는 count(*) 반환
	public int selectAdminMember(ZakSimMember member);

	// 회원 관리 리스트
	public void selectAdminMemberList(String category, int listNum);

	// 계정 정지 처리
	public void updateMemberStatus(ZakSimMember member);

	// 기간 별 가입 인원
	public void selectJoinNum(int period);

	// 기간 별 회원 수
	public void selectMemberNum(int period);

}
