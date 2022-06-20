<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>Q&A Write</title>
<head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<link rel="stylesheet" href="maincss.css">
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
#writeTitle {
	width: 15%;
	margin-left: 1%;
	margin-top: 3%;
	height: 30px;
}

#title {
	width: 5%;
	margin-left: 2%;
	height: 30px;
}

#inputUnderDiv {
	width: 1230px;;
	height: 48px;
	border-radius: 15px;
	margin-top: 1.5%;
	background-color: rgba(237, 237, 239);
}

#inputUnderDiv2 {
	width: 90%;;
	height: 30px;
	border-radius: 15px;
	margin-top: 1.5%;
}

#inputUnderContent {
	width: 1200px;;
	height: 600px;
	margin-left: 1%;
}

#inputUnderTitle {
	width: 1210px;
	height: 15px;
	border-radius: 15px;
	border: none;
	background: transparent;
	margin-left: 20px;
	margin-top: 10px;
	padding-top: 8px;
	padding-bottom: 8px;
}

#buttons {
	margin-left: 1%;
	width: 99%;
	height: 50px;
	padding-top: 18px;
}

.sub_btn {
	width: 45%;
	height: 40px;
	margin-right: 9%;
	border: none;
	border-radius: 20px;
	background-color: rgba(237, 237, 239);
}

#btn-update {
	width: 45%;
	height: 40px;
	border: none;
	border-radius: 20px;
	background-color: #ffec1f67
}

section {
	padding-bottom: 200px;
}

footer {
	width: 1250px;
	position: absolute;
	border-top-style: solid;
	border-bottom-style: solid;
	border-color: rgb(220, 204, 228);
	margin-bottom: 100px;
}

.f1 {
	float: left;
	margin-left: 40px;
	margin-right: 100px;
	text-align: center;
	padding-left: 200px;
	padding-top: 50px;
}

.f2 {
	float: left;
	margin-left: 100px;
	padding-top: 30px;
}

.f3 {
	margin-top: 150px;
	background-color: rgb(247, 234, 138);
	height: 70px;
	padding-top: 10px;
	padding-left: 230px;
}

.ff4 {
	float: left;
	margin-left: 230px;
	margin-bottom: 50px;
}

.ff5 {
	float: left;
	margin-left: 200px;
	margin-bottom: 50px;
}

#fimg {
	margin-left: 230px;
}

.btn {
	padding-top: 700px;
	padding-left: 50px;
	padding-bottom: 100px;
}
</style>
</head>

<body>
	<div id="writeBox">
		<input type="hidden" id="id" value="${board.id}" />
		<div id="title">
			<h4>제목</h4>
		</div>
		<div id="inputUnderDiv">
			<input value="${board.title}" id="inputUnderTitle" type="text" placeholder="제목" />
		</div>
		<div id="writeTitle">
			<h4>글 작성하기</h4>
			<div id="inputUnderDiv2">
				<input value="${board.content}" id="inputUnderContent" placeholder="글 작성하기" />
			</div>
		</div>
	</div>
	<div class="btn">
		<button class="sub_btn" onclick="history.back()">취소</button>
		<button id="btn-update">수정</button>
	</div>


	<script src="/js/board.js"></script>
	<%@include file="../layout/footer.jsp"%>