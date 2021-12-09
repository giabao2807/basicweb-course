package model.bo;

import java.util.List;

import model.bean.SinhVien;
import model.dao.SinhVienDao;

public class SinhVienBo {
	private SinhVienDao dao;
	
	public SinhVienBo() {
		dao = new SinhVienDao();
	}
	
	public List<SinhVien> getAll() {
		return dao.getAll();
	}
	
	public SinhVien getSvByMsv(String msv) {
		return dao.getSvByMsv(msv);
	}
	
	public boolean UpdateSinhVien(SinhVien sinhVien) {
		return dao.UpdateSinhVien(sinhVien);
	}
	
	public boolean DeleteSinhVien(String msv) {
		return dao.DeleteSinhVien(msv);
	}
	
	public boolean AddSinhVien(SinhVien sinhVien) {
		return dao.AddSinhVien(sinhVien);
	}
	
	public List<SinhVien> getAllfromKhoa(String makhoa) {
		return dao.getAllfromKhoa(makhoa);
	}
}
