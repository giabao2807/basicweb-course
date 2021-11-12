package demo2.bo;

import java.util.List;

import demo2.dao.AdminDao;
import demo2.model.Admin;

public class CheckLoginBo {
	AdminDao dao = new AdminDao();
	
	public boolean isExist(String use,String pass) {
		List<Admin> listad = dao.getAllAdmin();
		for (Admin ad : listad) {
			if (ad.getUsername().equals(use) && ad.getPassword().equals(pass)) {
				return true;
			}
		}
		return false;
	}
}
