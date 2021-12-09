package model.bean;

public class SinhVien {

	private String msv;
	private String name;
	private boolean sex;
	private String makhoa;

	public SinhVien() {
		// TODO Auto-generated constructor stub
	}

	public SinhVien(String msv, String name, Boolean sex, String makhoa) {
		super();
		this.msv = msv;
		this.name = name;
		this.sex = sex;
		this.makhoa = makhoa;
	}

	@Override
	public String toString() {
		return "SinhVien [msv=" + msv + ", name=" + name + ", sex=" + sex + ", makhoa=" + makhoa + "]";
	}

	public String getMsv() {
		return msv;
	}

	public void setMsv(String msv) {
		this.msv = msv;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean getSex() {
		return sex;
	}

	public void setSex(Boolean sex) {
		this.sex = sex;
	}

	public String getMakhoa() {
		return makhoa;
	}

	public void setMakhoa(String makhoa) {
		this.makhoa = makhoa;
	}

}