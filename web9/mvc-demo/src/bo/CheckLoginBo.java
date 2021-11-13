package bo;

import java.util.List;

import bean.Wife;
import dao.CheckLoginDao;

public class CheckLoginBo {
	CheckLoginDao dao;
	
	public CheckLoginBo() {
		dao = new CheckLoginDao();
	}
	
	public boolean isExistAcount(String user, String pass) {
		return dao.isExistAcount(user, pass);
	}
	
	public List<Wife> getAllWifes(){
		return dao.getWifeList();
	}
}
