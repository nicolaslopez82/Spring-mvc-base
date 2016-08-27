package com.nml.mvc.base.dto;

import org.hibernate.validator.constraints.NotEmpty;

public class RegistrationDTO {

	@NotEmpty
	private String username;

	@NotEmpty
	private String password;

	@NotEmpty
	private String email;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "RegistrationDTO{" +
				"username='" + username + '\'' +
				", password='" + password + '\'' +
				", email='" + email + '\'' +
				'}';
	}
}
