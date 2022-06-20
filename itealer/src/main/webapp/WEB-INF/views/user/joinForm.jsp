<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/signHeader.jsp"%>


<form>
	<div class="imgcontainer">
		<a href="/"><img src="/img/iTEALER-001.png" alt="Avatar" class="avatar"></a>
	</div>

	<div class="container">

		<div class="form-group">
		<input type="text" class="form-control" placeholder="이름 (실명을 입력해주세요)" id="realname">
		</div>
		
		<div class="form-group">
		 <input type="text" class="form-control" placeholder= "아이디" id="username">
		</div>
		
		<div class="form-group"> 
		<input type="password" class="form-control" placeholder="비밀번호" id="password">
		</div>
		
		<div class="form-group"> 
		<input type="text" class="form-control" placeholder="닉네임" id="nickname">
		</div>
		
		<div class="form-group">
		 <input type="text" class="form-control" placeholder="학적정보를 입력해주세요." id="schoolInfo">
		</div>

		
		
	</div>
	<div class="container" style="background-color: #f1f1f1"></div>
</form>
<button id="btn-save" class="btn btn-primary">회원가입</button>
<script src="/js/user.js"></script>