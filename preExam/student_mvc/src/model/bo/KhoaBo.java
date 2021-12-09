package model.bo;

import java.util.List;

import model.bean.Khoa;
import model.bean.SinhVien;
import model.dao.KhoaDao;

public class KhoaBo {
	private KhoaDao dao;
	
	public KhoaBo() {
		dao = new KhoaDao();
	}
	
	public List<Khoa> getAll() {
		return dao.getAll();
	}
	

}
