package model.bean;

public class PhongBan {
	private String idpb;
	private String tenpb;
	private String mota;
	
	public PhongBan() {
		// TODO Auto-generated constructor stub
	}

	public PhongBan(String idpb, String tenpb, String mota) {
		super();
		this.idpb = idpb;
		this.tenpb = tenpb;
		this.mota = mota;
	}

	public String getIdpb() {
		return idpb;
	}

	public void setIdpb(String idpb) {
		this.idpb = idpb;
	}

	public String getTenpb() {
		return tenpb;
	}

	public void setTenpb(String tenpb) {
		this.tenpb = tenpb;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	@Override
	public String toString() {
		return "PhongBan [idpb=" + idpb + ", tenpb=" + tenpb + ", mota=" + mota + "]";
	}
	
	
	
}
