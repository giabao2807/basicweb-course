package bo;

import java.util.List;

import bean.Wife;
import dao.WifeDao;

public class WifeBo {
	WifeDao dao;
	
	public WifeBo() {
		dao = new WifeDao();
	}
	
	public List<Wife> getAllWifes(){
		return dao.getWifeList();
	}
	
	public boolean addWife(String name, String address, boolean alive) {
		return dao.addWife(name, address, alive);
	}
	public Wife getWifeByID(int id) {
		return dao.getWifeByID(id);
	}
	public boolean updateWife(Wife w) {
		return dao.updateWife(w);
	}
}
