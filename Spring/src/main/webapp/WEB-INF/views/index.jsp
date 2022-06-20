<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="layout/header.jsp"%>

<body>
	<div class="section">
		<input type="radio" name="slide" id="slide01" checked> <input type="radio" name="slide" id="slide02"> <input type="radio" name="slide" id="slide03">
		<div class="slidewrap">

			<ul class="slidelist">
				<!-- 슬라이드 영역 -->
				<li class="slideitem"><a> <img src="/img/mainBar/b.01.png">
				</a></li>
				<li class="slideitem"><a> <img src="/img/mainBar/b.02.png">
				</a></li>
				<li class="slideitem"><a> <img src="/img/mainBar/b.03.png">
				</a></li>

				<!-- 좌,우 슬라이드 버튼 -->
				<div class="slide-control">
					<div>
						<label for="slide03" class="left"></label> <label for="slide02" class="right"></label>
					</div>
					<div>
						<label for="slide01" class="left"></label> <label for="slide03" class="right"></label>
					</div>
					<div>
						<label for="slide02" class="left"></label> <label for="slide01" class="right"></label>
					</div>
				</div>

			</ul>
			<!-- 페이징 -->
			<ul class="slide-pagelist">
				<li><label for="slide01"></label></li>
				<li><label for="slide02"></label></li>
				<li><label for="slide03"></label></li>
			</ul>
		</div>
	</div>
	
	<div class="news">
		<h2>📌 IT NEWS</h2>
		<a href="https://www.donga.com/news/Society/article/all/20200324/100316531/1"><img id="n" src="/img/mainNews/n.01.png"></a> <a
			href="https://magazine.hankyung.com/job-joy/article/202104306364d"><img id="n" src="/img/mainNews/n.02.png"></a> <a href="https://www.yna.co.kr/view/AKR20200615105800051"><img id="n"
			src="/img/mainNews/n.03.png"></a>
	</div>
	
	<div class="aside">
		<div class="left1">
			<h2>📌  iTEALER</h2>
			<div class="user">
				<c:forEach var="user" items="${users.id}">
					<h4 class="card-title">${user.nickname}</h4>
				</c:forEach>
			</div>
			<div class="user">
				<img id="user" src="user2.png" style="display: block;"><br />눈물<br />채택률 86%
			</div>
			<div class="user">
				<img id="user" src="user3.png" style="display: block;"> <br />말하는 감자<br />채택률 83%
			</div>
		</div>
		<div class="left1">
			<h2>📌 최근 Q&A</h2>
			<div class="box1">
				<c:forEach var="board" items="${boards.content}">
					<h4 class="card-title">${board.title}</h4> 
					<a href="/board/${board.id}" class="btn btn-primary">상세보기</a>
				</c:forEach>
			</div>
		</div>
	</div>
</body>


<%@include file="layout/footer.jsp"%>