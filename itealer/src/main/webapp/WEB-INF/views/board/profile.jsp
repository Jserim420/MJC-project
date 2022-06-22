<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../layout/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>profile</title>
<head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<link rel="stylesheet" href="h_maincss.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('.outer-menu-item').hover(function() {
			$(this).find('.inner-menu').show();
		}, function() {
			$(this).find('.inner-menu').hide();
		});
	});
</script>

<style>
html {
	margin-left: 300px;
	margin-right: 300px;
	width: 1250px;
	align-items: center
}

#divStyle {
	display: inline-block;
	vertical-align: middle;
}

#divStyle2 {
	border: 1px solid rgb(237, 237, 239);
	border-radius: 10px;
	width: 1130px;
	top: 400px;
	box-shadow: 4px 4px rgba(237, 237, 239);
}

.wideLineHeight {
	line-height: 1.9;
}

#divStyle3 {
	border: 1px;
	border-radius: 30px;
	padding: 10px;
	"
}
</style>

<style type="text/css">
div {
	font-size: 15px;
	color: #black;
	padding: 10px;
	margin: 15px;
}

.submit {
	background-color: #ffec1f67;
	color: rgb(0, 0, 0);
	padding: 14px 0px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	border-radius: 20px;
	font-size: small;
	text-align: center;
}

.pull-left {
	padding: 0;
	margin: 0;
	display: flex;
	justify-content: left;
}

#text1 {
	width: 100%;
	border-radius: 20px;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	background-color: #00000009
}

button {
	background-color: #ffec1f67;
	color: rgb(0, 0, 0);
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	border-radius: 20px;
}

#main-navigation {
	border-top: 1px solid #C8C8C8;
	border-bottom: 1px solid #C8C8C8;
	margin-bottom: 20px;
	height: 70px;
	list-style: none;
}
</style>

</head>
<body>

	<div>
		<span id="divStyle"><img src="/img/mainUsers/user1.png" alt="img" width="90" height=90 vspace="20" hspace="20"></span> <span id="divStyle"> 보리<br>
			<p>채택률 100.0%</p>
	</div>
	
		<span><b>내가 쓴 글</b></span>
		<p>
		<div id="divStyle2">
			<p class="wideLineHeight">
				자바 진짜 모르겠다;;;;; 학교 과젠데 너무 어려움,,, 도와줄 사람 있으신가여,,? <br>다들 스터디 하세요? 저랑 자바 스터디 하실 분 모십니당~~~^^ <br>데이터 베이스 간단한 과제인데 데베 잘하시는 분 있으신가용</br>
			</p>
		</div>

		<div class="container"></div>
		<input type="text" id="text1" placeholder="이름 (실명을 입력해주세요)" name="uname" required>
		 <input type="text" id="text1" placeholder="아이디" name="uname" required>
		  <input type="password" id="text1" placeholder="비밀번호"name="psw" required> 
		 <input type="text" id="text1" placeholder="닉네임" name="nickname" required>
		  <input type="text" id="text1" placeholder="학적정보를 입력해주세요." name="uname" required>
		<div class="submit">
			<a href="#">수정하기</a>
		</div>
</body>
</html>

<%@include file="../layout/footer.jsp"%>