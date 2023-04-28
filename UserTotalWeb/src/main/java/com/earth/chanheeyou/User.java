package com.earth.chanheeyou;

import java.util.Objects;

public class User {

	private String id;
	private String pwd;
	private String name;
	private String email;
	private String nickname;
	
	public User() {}

	public User(String id, String pwd, String name, String email, String nickname) {
		//super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.nickname = nickname;
	}

	@Override
	public int hashCode() {
		return Objects.hash(email, id, name, pwd, nickname);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		return Objects.equals(email, other.email) && Objects.equals(id, other.id)
				&& Objects.equals(name, other.name) && Objects.equals(pwd, other.pwd) && Objects.equals(nickname, other.nickname);
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}



	@Override
	public String toString() {
		return "User [id=" + id + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", nickname=" + nickname
				+ "]";
	}
	
	
	
}
































