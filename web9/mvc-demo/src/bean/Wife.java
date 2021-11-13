package bean;

public class Wife {
	private String name;
	private String address;
	private Boolean alive;

	public Wife() {
	}

	public Wife(String name, String address, Boolean alive) {
		super();
		this.name = name;
		this.address = address;
		this.alive = alive;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Boolean getAlive() {
		return alive;
	}

	public void setAlive(Boolean alive) {
		this.alive = alive;
	}

}
