package zaksim.dao;

public interface ProfitDao {

	// 기간 별 수수료 이익
	void selectProfits(int period);

}
