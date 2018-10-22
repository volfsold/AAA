package zaksim.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.ReportDao;
import zaksim.dao.ZakSimMemberDao;
import zaksim.dto.Report;
import zaksim.dto.ZakSimMember;
import zaksim.util.Paging;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired ZakSimMemberDao zakSimMemberDao;
	@Autowired ReportDao reportDao;
	
	@Override
	public List<ZakSimMember> viewList(Paging paging, String category, int listNum) {
		// TODO Auto-generated method stub
		// 페이징 객체 생성
		zakSimMemberDao.selectAdminMemberList(category, listNum);
		return null;
	}

	@Override
	public List<Report> viewReport(ZakSimMember member) {
		// TODO Auto-generated method stub
		reportDao.selectReport(member);
		return null;
	}

	@Override
	public void suspend(ZakSimMember member) {
		// TODO Auto-generated method stub
		zakSimMemberDao.updateMemberStatus(member);
		// 디비에서 자동으로 상태변경되게 만들거나 메소드 생성하기
		
	}

}
