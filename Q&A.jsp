<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp"%>

<!DOCTYPE html>
<html>
<title>iTEALER</title>
<head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<link rel="stylesheet" href="maincss.css">
<link rel="stylesheet" href="Listcss.css">
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

<body>

	<div id="mainWrapper">
		<!-- 검색 폼 영역
        <li id='liSearchOption'>
            <div>
                <select id='selSearchOption' >
                    <option value='A'>전체</option>
                    <option value='T'>제목</option>
                    <option value='C'>내용</option>
                </select>
                <input id='txtKeyWord' placeholder="ㅤ검색어를 입력하세요" />
                <button id="btn_search">검색</button>
            </div>
        </li>
        -->
		<ul>
			<li>
				<ul id="ulTable">
					<li>
						<ul>
							<li>No</li>
							<li>제목</li>
							<li>작성일</li>
							<li>작성자</li>
							<li>조회수</li>
						</ul>
					</li>
					<c:forEach var="board" items="${boards.content}">
						<li>
							<ul>
								<li>${board.id}</li>
								<li><a href="/board/${board.id}">${board.title}</a></li>
								<li>${board.createDate}</li>
								<li>${board.user.username}</li>
								<li>${board.count}</li>
							</ul>
						</li>
					</c:forEach>
				</ul>
			</li>

			<%-- 글 페이징 --%>

			<li>
				<div id="divPaging">
					<c:choose>
						<c:when test="${boards.first}">
							<li class="page-item disabled"><a class="page-link" href="?page=${boards.number-1}">이전</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="?page=${boards.number-1}">이전</a></li>
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${boards.last}">
							<li class="page-item disabled"><a class="page-link" href="?page=${boards.number+1}">다음</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="?page=${boards.number+1}">다음</a></li>
						</c:otherwise>
					</c:choose>
				</div>
				<button class="btn_question">질문하기</button>
			</li>
		</ul>
	</div>
</body>
</html>

<%@include file="../layout/footer.jsp"%>