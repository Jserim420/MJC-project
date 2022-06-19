package com.cos.itealer.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.*;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Board {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // auto_increment
	private int id; 
	
	@Column (nullable = false, length = 100)
	private String title;
	
	@Lob // 대용량 데이터 사용
	private String content; // 섬머노트 라이브러리 사용 ; <html> 태그가 섞여서 디자인
	
	private int count; // 조회수
	
	@ManyToOne(fetch = FetchType.EAGER) // Many = Board, One = User; 한명의 User는 여러개의 Board를 쓸 수 있다.
	@JoinColumn(name="userId")
	private User user; // DB는 오브젝트를 저장할 수 없다 ->FK 사용 , 자바는 오브젝트를 저장할 수 있다. ; ORM을 사용하면 오브젝트 저장 가능
	
	@OneToMany(mappedBy = "board", fetch = FetchType.EAGER) // One = Board, Many = reply
	// mappedBy : 연관관계의 주인이 아니다(fk가 아니다, DB에 칼럼을 생성하지 마라.)
	// @JoinColumn ; fk가 필요 없다, 제1 정규화가 깨진다.
	private List<Reply> reply;
	
	@CreationTimestamp //데이터가 업데이트 될때 자동으로 시간설정
	private Timestamp createDate;
	}
