package model.bo;

import java.util.List;

import model.bean.NhanVien;
import model.dao.NhanVienDao;

public class NhanVienBo {
	private NhanVienDao nvdao;
	
	public NhanVienBo() {
		nvdao = new NhanVienDao();
	}
	
	public List<NhanVien> getAll(){
		return nvdao.getAll();
	}
	
	public boolean save(NhanVien nv) {
		return nvdao.save(nv);
	}
	
	public boolean deleteById(int id) {
		return nvdao.deleteById(id);
	}
	
	public List<NhanVien> search(String key, String value) {
		return nvdao.search(key, value);
	}
}
