<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>Q&A View</title>
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
</head>

<style>
{
margin-left




:


 


300px




;
margin-right




:


 


300px




;
width




:


 


1250px




;
align-items




:


 


center



             


}
#main-navigation {
	border-top: 1px solid #C8C8C8;
	border-bottom: 1px solid #C8C8C8;
	margin-bottom: 20px;
	height: 70px;
	list-style: none;
}

.outer-menu-item {
	float: left;
	position: relative;
	list-style: none;
}

.outer-menu-item:hover {
	background: rgb(255, 255, 255);
	color: rgb(185, 157, 206);
	list-style: none;
}

.menu-title {
	display: block;
	height: 30px;
	line-height: 30px;
	text-align: center;
	padding: 5px 20px;
}

.inner-menu {
	display: none;
	position: absolute;
	top: 40px;
	left: 0;
	width: 100%;
	background: white;
	box-shadow: 0 2px 6px rgba(5, 5, 5, 0.9);
	z-index: 1000;
	text-align: center
}

.inner-menu-item>a {
	display: block;
	padding: 5px 10px;
	color: black
}

.inner-menu-item>a:hover {
	background: rgb(185, 157, 206);
	color: white;
}

.search-box {
	padding: 10px;
	height: 30px;
	margin-top: 100px;
	background-color: #fff;
	border: 1px solid rgb(185, 157, 206);
	border-radius: 30px;
	transition: 0.4s;
	width: 500px;
	float: right;
	position: relative;
}

.search-btn {
	text-decoration: none;
	float: right;
	width: 30px;
	height: 30px;
	background-color: #fff;
	border-radius: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	color: rgb(185, 157, 206);
	position: absolute;
	right: 11px;
	top: 11px;
}

.search-box:hover>.search-btn {
	background-color: #fff;
}

.search-txt {
	padding: 0;
	width: 0px;
	border: none !important;
	background: none;
	outline: none;
	float: left;
	font-size: 1rem;
	line-height: 30px;
	margin: 0 !important;
	height: 38px;
	background-color: white !important;
}

.search-txt {
	width: 240px;
	padding: 0 6px;
}

.category {
	background-color: rgb(221, 211, 229);
	text-align: center;
	padding-top: 1px;
	padding-bottom: 1px;
	font-size: 16px;
	border-radius: 10px;
}

.bold {
	font-weight: 900;
}

.question_box {
	margin-top: 40px;
	margin-bottom: 100px;
	border: 1px solid rgb(237, 237, 239);
	padding-left: 100px;
	padding-right: 100px;
	padding-bottom: 100px;
	box-shadow: 4px 4px rgba(237, 237, 239);
	border-radius: 10px;
}

.question_box p {
	font-size: 16px;
	padding-top: 10px;
}

.question {
	border: 0px solid black;
	margin-left: 20px;
	background-color: rgba(237, 237, 239);
	padding-left: 12px;
	padding-right: 400px;
	padding-top: 7px;
	padding-bottom: 7px;
	border-radius: 40px;
}

.question_img {
	margin-top: 100px;
	width: 700px;
	height: auto;
}

.entire_answer {
	display: flex;
	justify-content: space-between;
	margin-bottom: 40px;
}

.answer {
	display: flex;
	padding-top: 10px;
	padding-left: 10px;
	padding-right: 30px;
	border: 1px solid rgb(221, 220, 220);
	box-shadow: 4px 4px rgb(237, 237, 239);
	border-radius: 10px;
}

.answer_icon {
	width: 50px;
}

.icon_box {
	text-align: center;
}

.answer_description {
	padding-left: 30px;
}

.answer_info {
	padding-top: 21px;
	color: gray;
	font-size: 13px;
}

.rating {
	padding-left: 495px;
	font-size: 25px;
	font-weight: 600;
	width: 50px;
	text-align: center;
}

.select_box {
	background-color: rgba(185, 157, 206, 0.6);
	text-align: center;
	width: 70px;
	height: 20px;
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 6px;
	padding-bottom: 6px;
	margin-top: 45px;
	border-radius: 10px;
	box-shadow: 2px 2px rgb(237, 237, 239);
}

.sub_answer {
	padding-left: 10px;
	padding-top: 6px;
	padding-bottom: 6px;
	border-radius: 10px;
	border: 1px solid rgb(221, 220, 220);
	box-shadow: 2px 2px rgb(237, 237, 239);
	display: flex;
	justify-content: space-between;
	margin-bottom: 10px;
}

.flex {
	display: flex;
}

.flex p {
	padding-left: 10px;
	color: gray;
	font-size: 15px;
}

.submit_btn {
	width: 70px;
	background-color: rgba(185, 157, 206, 0.6);
	text-align: center;
	margin-top: -6px;
	margin-bottom: -6px;
	padding-top: 22px;
	border-radius: 10px;
	box-shadow: 2px 2px rgb(208, 206, 206);
}

#no {
	padding-top: 15px;
	padding-bottom: 15px;
}

.go_right {
	margin-left: 100px;
	margin-bottom: 80px;
}

.btns {
	display: flex;
	margin-top: 70px;
	justify-content: flex-end;
	margin-bottom: 70px;
}

.sub_btn {
	background-color: rgba(185, 157, 206, 0.6);
	margin-right: 10px;
	padding-top: 6px;
	padding-bottom: 6px;
	padding-left: 10px;
	padding-right: 10px;
	border-radius: 10px;
}

section {
	padding-bottom: 200px;
}
</style>

<div class="category">
	<p>
		JAVAㅤ|ㅤJavaScriptㅤ|ㅤPHPㅤ|ㅤC++ / C#ㅤ|ㅤ<span class="bold">Python</span>ㅤ|ㅤKotlinㅤ|ㅤSQLㅤ|ㅤRㅤ|ㅤSwiftㅤ|ㅤVisualBasicㅤ|ㅤ기타
	</p>
</div>
<p>
	작성자 : <span> <i>${board.user.username} </i></span>
</p>


<div class="question_box">
	<p>
		제목 <span class="question"> ${board.title}</span>
	</p>
</div>

<div class="btns">
	<button class="sub_btn" onclick="history.back()">돌아가기</button>
	<c:if test="${board.user.id == principal.user.id}">
		<a href="/board/${board.id}/updateForm" class="btn btn-warning">수정</a>
		<button id="btn-delete" class="btn btn-danger">삭제</button>
	</c:if>
</div>

<div class="entire_answer">
	<div class="answer">
		<ul id="reply-box" class="list-group">
			<c:forEach var="reply" items="${board.replys }">
				<li id="reply-${reply.id}" class="list-group-item d-flex justify-content-between">
					<div>${reply.content}</div>
					<div class="d-flex">
						<div class="font-italic">작성자 : ${reply.user.username} &nbsp;</div>
						<c:if test="${reply.user.id eq principal.user.id}">
							<button onClick="index.replyDelete(${board.id}, ${reply.id})" class="badge">삭제</button>
						</c:if>

					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
</div>

<div class="icon_box">
	<img src="icon.png" class="answer_icon">
	<p>그그</p>
</div>
<div class="answer_description">
	<p>오잉,,,,?</p>
	<p class="answer_info">2022.05.05 16:31ㅤㅤ답글쓰기</p>
</div>
<div class="rating" style="padding-left: 775px;">
	△<br /> -21<br /> ▽
</div>
</div>
<div class="select_box">채택하기</div>
</div>

<div class="sub_answer">
	<div class="flex">
		<img src="icon.png" class="answer_icon">
		<textarea class="form-control" rows="1">댓글을 작성하여 문제해결에 도움을 주세요.</textarea>
	</div>

	<div class="submit_btn">
		<button class="btn btn-primary">작성
	</div>
	</button>
</div>

</body>


<script src="/js/board.js"></script>
<%@include file="../layout/footer.jsp"%>