package model.bo;

import java.util.List;

import model.bean.Admin;
import model.dao.AdminDao;

public class AdminBo {
	private AdminDao dao;

	public AdminBo() {
		dao = new AdminDao();
	}

	public List<Admin> getAll() {
		return dao.getAll();
	}

	public boolean isExist(String username, String password) {
		return dao.isExist(username, password);

	}
	public boolean save(Admin admin) {
		return dao.save(admin);
	}
}