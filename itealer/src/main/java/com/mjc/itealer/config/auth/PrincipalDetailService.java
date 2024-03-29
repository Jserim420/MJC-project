package com.mjc.itealer.config.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.mjc.itealer.model.User;
import com.mjc.itealer.repository.UserRepository;


@Service
public class PrincipalDetailService implements UserDetailsService {
	
	@Autowired
	private UserRepository userRepository;
	
	// 스프링이 로그인 요청을 가로챌 때, 변수 username과 password를 가로채는데 password부분처리는 알아서 함
	// username만 DB에 있는지 확인해주면 됨
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User principal = userRepository.findByUsername(username)
				.orElseThrow(()-> {
					return new UsernameNotFoundException("해당 사용자를 찾을 수 없습니다. : " + username);
				});
		return new PrincipalDetail(principal); // 시큐리티 세션에 유저 정보 저장
	}
}
