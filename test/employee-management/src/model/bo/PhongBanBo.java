package model.bo;

import java.util.List;

import model.bean.PhongBan;
import model.dao.PhongBanDao;

public class PhongBanBo {
	private PhongBanDao pbdao;
	
	public PhongBanBo() {
		pbdao = new PhongBanDao();
	}
	
	public List<PhongBan> getAll(){
		return pbdao.getAll();
	}
	
	public boolean update(PhongBan pb) {
		return pbdao.update(pb);
	}
}
