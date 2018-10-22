package zaksim.admin.service;

import zaksim.dto.ZakSimMember;

public interface LoginService {
	
	// 로그인
	public boolean login(ZakSimMember member);

}
