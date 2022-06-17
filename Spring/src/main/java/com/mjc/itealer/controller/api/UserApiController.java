package com.mjc.itealer.controller.api;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import com.mjc.itealer.dto.ResponseDto;
import com.mjc.itealer.model.User;
import com.mjc.itealer.service.UserService;


@RestController
public class UserApiController {
	
	@Autowired
	private UserService userService;
	
	
	@PostMapping("/auth/joinProc")
	public ResponseDto<Integer> save(@RequestBody User user) {
		System.out.println("UserApiController : save 호출됨");
		// 실제로 DB에 insert를 하고 return
		userService.회원가입(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);  // 호출에 대한 응답 - 자바오브젝트를 JSON으로 변환하여 실행(Jackson 라이브러리)
	}
}

