package com.cos.itealer.model;

import java.sql.Timestamp;

import javax.persistence.*;

import org.hibernate.annotations.CreationTimestamp;

import lombok.*;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class Reply {
	
	@Id // primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
	private int id;
	
	@Column(nullable = false, length = 200)
	private String content;
	
	@ManyToOne // Reply : many, board : one -> 하나의 게시글은 여러개의 댓글이 달릴 수 있다.
	@JoinColumn(name = "boardId")
	private Board board;

	@ManyToOne // Reply : many, user : one -> 한명의 유저가 여러개의 댓글을 쓸 수 있다.
	@JoinColumn(name = "userId")
	private User user;
	
	@CreationTimestamp
	private Timestamp createDate;
}
