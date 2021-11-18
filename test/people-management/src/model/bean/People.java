package model.bean;

public class People {
	private int id;
	private String lastname;
	private String firstname;
	private String roles;
	
	public People() {
		// TODO Auto-generated constructor stub
	}
	
	
	

	public People(String lastname, String firstname, String roles) {
		super();
		this.lastname = lastname;
		this.firstname = firstname;
		this.roles = roles;
	}




	public People(int id, String lastname, String firstname, String roles) {
		super();
		this.id = id;
		this.lastname = lastname;
		this.firstname = firstname;
		this.roles = roles;
	}



	public String getRoles() {
		return roles;
	}



	public void setRoles(String roles) {
		this.roles = roles;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	
}
