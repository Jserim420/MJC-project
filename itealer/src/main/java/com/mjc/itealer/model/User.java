package com.mjc.itealer.model;

import java.sql.Timestamp;

import javax.persistence.*;

import org.hibernate.annotations.CreationTimestamp;
import lombok.*;

@Data // Getter와 Setter 자동생성
@NoArgsConstructor
@AllArgsConstructor
@Builder // 빌더 패턴
@Entity // User 클래스가 MySQL에 테이블이 자동 생성 (테이블화)
//(jpa) ORM -> Java(다른 언어도) Object -> 테이블로 매핑해주는 기술
// @DynamicInsert  : insert시 null인 필드 제외
public class User {
	
	@Id //Primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY) // 프로젝트에서 연결된 DB의 넘버링 전략
	private int id; // 시퀀스, auto_increment
	
	@Column(nullable = false, length = 30, unique=true)
	private String username; // 아이디
	
	@Column(nullable = false, length = 30)
	private String realname; // 이름
	
	@Column(nullable = false, length = 100) 
	private String password;
	
	@Column(nullable = false, length = 50) 
	private String nickname;
	
	@Column(nullable = false, length = 50) 
	private String schoolInfo;
	
	@Column(nullable = true) 
	private int wirteCount;
	
	@Column(nullable = true) 
	private int adoptCount;
	
	@Enumerated(EnumType.STRING)
	private RoleType role;
	
	@CreationTimestamp // 시간 자동 입력
	private Timestamp createDate;
}