package com.webapp.service;

import com.webapp.model.AuthInfo;

public class AuthService {

	public AuthInfo authenticate(String email, String password) {
		AuthInfo info = new AuthInfo();

		info.setName("홍길동");
		info.setEmail(email);
		
		
		return info;
	}
}
