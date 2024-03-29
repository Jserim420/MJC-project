<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../layout/header.jsp"%>

<!DOCTYPE html>
<html>
    <title>iTEALER</title>
    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
        <link rel="stylesheet" href="maincss.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.outer-menu-item').hover(function () {
                    $(this).find('.inner-menu').show();
                }, function () {
                    $(this).find('.inner-menu').hide();
                });
            });
        </script>
    </head>
 
<body>
    <div id="mainWrapper">

        <ul>
            <!-- 게시판 제목 -->
            <li>스터디 모집 </li>
<!-- 검색 폼 영역 -->
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
            <!-- 게시판 목록  -->
            <li>
                <ul id ="ulTable">
                    <li>
                        <ul>
                            <li>제목</li>
                            <li>작성일</li>
                            <li>작성자</li>
                        </ul>
                    </li>
                    <!-- 게시물이 출력될 영역 -->
                    <li>
                        <ul>
                            <li class="left">하남 스터디카페 같이 다니실 분 있나요?</li>
                            <li>2022.05.24</li>
                            <li>자바킹</li>
                        </ul>
                    </li>

                    <li>
                        <ul>
                            <li class="left">안양카공할사람</li>
                            <li>2022.05.24</li>
                            <li>코린이</li>
                        </ul>
                    </li>

                    <li>
                        <ul>
                            <li class="left">영단어 스터디</li>
                            <li>2022.05.24</li>
                            <li>눈물광광</li>
                        </ul>
                    </li>

                    <li>
                        <ul>
                            <li class="left">홍대 근처에서 스터디 하실 분~</li>
                            <li>2022.05.23</li>
                            <li>크아짱</li>
                        </ul>
                    <li>     
                        <li>
                            <ul>
                                <li class="left">자바 같이 공부할사람,,나 좀 알려줘</li>
                                <li>2022.05.22</li>
                                <li>응애나애기</li>
                            </ul>
                        <li>    
                            <li>
                                <ul>
                                    <li class="left">같이 명상 어플 구독하실 분 있나요?</li>
                                    <li>2022.05.21</li>
                                    <li>보리밥밥밥</li>
                                </ul>
                            <li>                                       
                </ul>
            </li>

            <!-- 게시판 페이징 영역 -->
            <li>
                <div id="divPaging">
                    <div><a href="#">◀</div></a>
                    <div><a href="#">1</div></a>
                    <div><a href="#">2</div></a>
                    <div><a href="#">3</div></a>
                    <div><a href="#">4</div></a>
                    <div><a href="#">5</div></a>
                    <div><a href="#">▶</div></a>
                </div>
            </li>
            <button class="btn_question">✏️글쓰기</button>
        </ul>
    </div>
        </body>
        </html>
<%@include file="../layout/footer.jsp"%>
        