package com.mjc.itealer.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.mjc.itealer.config.auth.PrincipalDetailService;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Lazy
@Configuration
@EnableWebSecurity // security 필터 등록 : 활성화 되어 있는 스프링 시큐리티의 특정 설정을 해당 파일에서 한다.
@EnableGlobalMethodSecurity(prePostEnabled = true) // 특정 주소로 접근하면 권한 및 인증을 미리 체크 
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private PrincipalDetailService principalDetailService;
	
	@Bean // IoC
	public BCryptPasswordEncoder encodePWD() {
		return new BCryptPasswordEncoder(); // 시큐리티가 들고있는 함수
	}
	
	// 시큐리티가 대신 로그인해줄때 password 가로채기 하는데
	// 해당 password가 뭘로 해쉬되어 회원가입 되었는지 알아야함
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// encodePWD의 해쉬값을 principalDetailService에게 알려줌
		auth.userDetailsService(principalDetailService).passwordEncoder(encodePWD());
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.csrf().disable() // csrf 토큰 비활성화(테스트시 활용)
			.authorizeRequests()
				.antMatchers("/", "/auth/**", "/js/**", "/img/**", "/dummy/**") // 해당 경로 모두 접근 가능
				.permitAll()
				.anyRequest()
				.authenticated() // auth이하가 아닌 경로는 인증되어야함
			.and()
				.formLogin()
				.loginPage("/auth/loginForm") // 인증이 필요한 경로에 접근시 해당 경로로 이동
				.loginProcessingUrl("/auth/loginProc") // 스프링 시큐리티가 해당 주소로 요청오는 로그인을 가로채서 대신 로그인
				.defaultSuccessUrl("/"); // 정상적으로 로그인 요청이 완료될때 이동
	}
	
}
