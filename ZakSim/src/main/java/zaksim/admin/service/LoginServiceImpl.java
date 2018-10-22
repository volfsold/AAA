package zaksim.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.ZakSimMemberDao;
import zaksim.dto.ZakSimMember;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired ZakSimMemberDao zakSimMemberDao;

	@Override
	public boolean login(ZakSimMember member) {
		 if(zakSimMemberDao.selectAdminMember(member)>0) {
			 return true;
		 }
		return false;
	}

}
