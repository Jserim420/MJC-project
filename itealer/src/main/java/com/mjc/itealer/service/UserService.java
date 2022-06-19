package com.mjc.itealer.service;

import org.springframework.transaction.annotation.Transactional;

import com.mjc.itealer.model.RoleType;
import com.mjc.itealer.model.User;
import com.mjc.itealer.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

// 스프링이 컴포넌트 스캔을 통해서 Bean에 등록을 해줌. loc를 해준다.
@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Transactional 
	public void 회원가입(User user) {
		String rawPassword = user.getPassword(); // 1234 원문
		String encPassword = encoder.encode(rawPassword); // 해쉬
		user.setPassword(encPassword);
		user.setRole(RoleType.USER);
		userRepository.save(user);
	}
}
