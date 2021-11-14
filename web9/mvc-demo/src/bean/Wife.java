package bean;

public class Wife {
	private int id;

	private String name;
	private String address;
	private Boolean alive;

	public Wife() {
	}

	public Wife(int id, String name, String address, Boolean alive) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.alive = alive;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
