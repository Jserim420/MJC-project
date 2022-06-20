<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../layout/signHeader.jsp"%>

<form action="/auth/loginProc"method="post">
	<div class="imgcontainer">
		<a href="/"><img src="/img/iTEALER-001.png" alt="Avatar" class="avatar"></a>
	</div>

	<div class="container">
		<div class="form-group">
		 <input type="text" name="username" class="form-control" placeholder="아이디" id="username">
		</div>
		<div class="form-group"> 
		<input type="password" name="password" class="form-control" placeholder="비밀번호" id="password">
		</div>
		<button id="btn-login" class="btn btn-primary">로그인</button>
	</div>

	<div class="container" style="background-color: #f1f1f1"></div>
</form>
