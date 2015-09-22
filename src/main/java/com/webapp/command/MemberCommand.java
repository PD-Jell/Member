package com.webapp.command;

import java.util.Date;

import com.webapp.model.Member;

public class MemberCommand {
	private String email; // size=64
	private String password; // size=64
	private String name; // size=12
	private String gender;
	private String[] hobby;
	private String comment;
	private boolean reception;

	public Member getMember() {
		Member m = new Member();
		m.setEmail(this.email);
		m.setPassword(this.password);
		m.setName(this.name);
		m.setGender(this.gender);
		m.setRegdate(new Date());
		return m;
	}

	public String[] getHobby() {
		return hobby;
	}

	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public boolean isReception() {
		return reception;
	}

	public void setReception(boolean reception) {
		this.reception = reception;
	}

}
