package com.mjc.itealer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

// 인증이 안된 사용자들이 출입할 수 있는 경로를 /auth 이하 경로 이용
// 주소가 /이면 index.jsp 접근 허용
// static이하에 있는 파일도 접근 허용

@Controller
public class UserController {
	
	@GetMapping("/auth/joinForm")
	public String joinForm() {
		return "/user/joinForm";
		
	}
	
	@GetMapping("/auth/loginForm")
	public String loginForm() {
		return "/user/loginForm";
	}

}