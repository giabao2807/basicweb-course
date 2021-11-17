package model.bean;

public class NhanVien {
	private int idnv;
	private String hoten;
	private String idpb;
	private String diachi;
	
	public NhanVien() {
		// TODO Auto-generated constructor stub
	}
	
	
	public NhanVien(String hoten, String idpb, String diachi) {
		super();
		this.hoten = hoten;
		this.idpb = idpb;
		this.diachi = diachi;
	}


	public NhanVien(int idnv, String hoten, String idpb, String diachi) {
		super();
		this.idnv = idnv;
		this.hoten = hoten;
		this.idpb = idpb;
		this.diachi = diachi;
	}
	public int getIdnv() {
		return idnv;
	}
	public void setIdnv(int idnv) {
		this.idnv = idnv;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getIdpb() {
		return idpb;
	}
	public void setIdpb(String idpb) {
		this.idpb = idpb;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	
	
}
