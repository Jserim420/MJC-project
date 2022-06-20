package com.mjc.itealer.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mjc.itealer.model.User;


// Data Access Object
// 자동 bean 등록
// @Repository  생략 가능
public interface UserRepository extends JpaRepository <User, Integer>{
	
	// SELECT * FROM user WHERE username = ?
	Optional<User> findByUsername(String username);
}
