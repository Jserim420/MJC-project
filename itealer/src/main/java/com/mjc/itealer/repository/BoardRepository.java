package com.mjc.itealer.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.mjc.itealer.model.Board;



// Data Access Object
// 자동 bean 등록
// @Repository  생략 가능
public interface BoardRepository extends JpaRepository <Board, Integer>{
	
}
