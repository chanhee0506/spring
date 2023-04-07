package com.earth.egg;

public class User {

	private String Id;
	private String pwd;
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "User [Id=" + Id + ", pwd=" + pwd + "]";
	}
	
	
}
