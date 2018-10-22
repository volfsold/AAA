package zaksim.util;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

public class ExcelWriter {
	
//	@Autowired private SqlSessionFactory sqlSessionFactory;
	
	@Transactional
	public void selectExcelList(HttpServletResponse response) {
	
	}
	
	// https://offbyone.tistory.com/70


}
