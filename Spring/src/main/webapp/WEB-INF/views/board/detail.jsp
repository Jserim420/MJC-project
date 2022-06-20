<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp"%>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
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
	padding-right: 800px;
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
	width: 1200px;
}

.answer_icon {
	width: 50px;
}

.icon_box {
	text-align: center;
	border-radius: 10px;
	border: 3px solid rgb(221, 220, 220);
	margin-bottom: 10px;
	width: 70px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.answer_description {
	padding-top: 12px;
	padding-left: 20px;
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
	border: 0px solid black;
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
	border: 0px solid black;
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
	border: 0px solid black;
	display: flex;
	margin-top: 70px;
	justify-content: flex-end;
	margin-bottom: 70px;
}

#btn-reply-save {
	border: 0px solid black;
	background-color: rgba(185, 157, 206, 0.6);
	margin-right: 10px;
	padding-top: 6px;
	padding-bottom: 6px;
	padding-left: 10px;
	padding-right: 10px;
	border-radius: 10px;
	margin-left: 70px;
}

.sub_btn {
	border: 0px solid black;
	background-color: rgba(185, 157, 206, 0.6);
	margin-right: 10px;
	padding-top: 6px;
	padding-bottom: 6px;
	padding-left: 10px;
	padding-right: 10px;
	border-radius: 10px;
}

.sub_btn1 {
	text-align: center;
	border-radius: 10px;
	border: 3px solid rgb(221, 220, 220);
	margin-bottom: 5px;
	width: 70px;
	border: 0px solid black;
	background-color: rgba(185, 157, 206, 0.6);
	padding-top: 6px;
	padding-bottom: 5px;
	padding-left: 10px;
	padding-right: 10px;
	border-radius: 10px;
	margin-top: 10px;
	margin-left: 10px;
}

.sub_btn2 {
	border: 0px solid black;
	background-color: rgba(185, 157, 206, 0.6);
	padding-top: 6px;
	padding-bottom: 6px;
	padding-left: 10px;
	padding-right: 10px;
	border-radius: 10px;
	margin-left: 10px;
	margin-top: -30px;
}

section {
	padding-bottom: 200px;
}

.question1 {
	margin-top: 50px;
}

.span_name {
 padding-left: 840px;
}

</style>
</head>

<body>


	<div class="question_box">
		<p>
			제목 <span class="question"> ${board.title}</span>
		</p>
		<p>
			<span class="span_name">작성자 : <i>${board.user.username} </i></span>
		</p>
		<div>
			<div class="question1">${board.content}</div>
		</div>
	</div>


	<div class="btns">
		<button class="sub_btn" onclick="history.back()">돌아가기</button>
		<c:if test="${board.user.id == principal.user.id}">
			<a href="/board/${board.id}/updateForm"><button class="sub_btn">수정</button></a>
			<button id="btn-delete" class="sub_btn">삭제</button>
		</c:if>
	</div>

	<c:forEach var="reply" items="${board.replys}">
		<div class="entire_answer">
			<div class="answer">
				<div class="icon_box">${reply.user.username}</div>

				<div id="reply-${reply.id}" class="answer_description">
					${reply.content}
				</div>
				
				</div>
				<c:if test="${reply.user.id eq principal.user.id}">
					<button onClick="index.replyDelete(${board.id}, ${reply.id})" class="sub_btn1">삭제</button>
				</c:if>

			</div>

	</c:forEach>

	<br />

	<div class="sub_answer" id="no">
		<form>
			<input type="hidden" id="userId" value="${principal.user.id}" /> <input type="hidden" id="boardId" value="${board.id}" />
			<div class="flex">
				<textarea style= "border: none;" id="reply-content" rows="1" cols="150"></textarea>
				<button type="button" id="btn-reply-save" class="submit_btn2">등록</button>
			</div>
		</form>
	</div>


	<script src="/js/board.js"></script>
	<%@include file="../layout/footer.jsp"%>