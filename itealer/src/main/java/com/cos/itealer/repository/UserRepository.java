package com.cos.itealer.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.itealer.model.User;

// Data Access Object
// 자동 bean 등록
// @Repository  생략 가능
public interface UserRepository extends JpaRepository <User, Integer>{
	// SELECT * FROM user WHERE username = 1?;
	Optional<User> findByUsername(String username);
}

// JPA Naming 쿼리
// SELECT * FROM user WHERE username = ? AND password = ?;
// User findByUsernameAndPassword(String username, String password);
