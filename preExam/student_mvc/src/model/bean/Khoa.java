package model.bean;

public class Khoa {
	private String makhoa;
	private String name;
	
	public Khoa() {
		// TODO Auto-generated constructor stub
	}

	public Khoa(String makhoa, String name) {
		super();
		this.makhoa = makhoa;
		this.name = name;
	}

	public String getMakhoa() {
		return makhoa;
	}

	public void setMakhoa(String makhoa) {
		this.makhoa = makhoa;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Khoa [makhoa=" + makhoa + ", name=" + name + "]";
	}
	
	
	
	
}
