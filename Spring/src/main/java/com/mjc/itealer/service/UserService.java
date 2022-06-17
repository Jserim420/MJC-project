package com.mjc.itealer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mjc.itealer.model.RoleType;
import com.mjc.itealer.model.User;
import com.mjc.itealer.repository.UserRepository;


// 스프링이 컴포넌트 스캔을 통해 Bean에 등록(IoC를 해준다)
@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Transactional // 하나의 트랜잭션이라는 것을 알려줌
	public void 회원가입(User user) {
		String rawPassword = user.getPassword(); //원문
		String encPassword = encoder.encode(rawPassword); //해쉬값
		user.setPassword(encPassword);
		user.setRole(RoleType.USER);
		userRepository.save(user); // - 하나의 트랜잭션	
	}
	
	/*
	@Transactional(readOnly = true) // SELECT 할때 트랜잭션 시작, 서비스 종료 시 트랜잭션 종료(정합성유지)
	public User 로그인(User user) {
			return userRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword()); // - 하나의 트랜잭션	
	}
	*/
}
