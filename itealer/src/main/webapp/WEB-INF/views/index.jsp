<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <div class="section">
        <input type="radio" name="slide" id="slide01" checked>
        <input type="radio" name="slide" id="slide02">
        <input type="radio" name="slide" id="slide03">
        <div class="slidewrap">
            
            <ul class="slidelist">
                <!-- 슬라이드 영역 -->
                <li class="slideitem">
                    <a>
                        <img src="b.01.png">
                    </a>
                </li>
                <li class="slideitem">
                    <a>
                        <img src="b.02.png">
                    </a>
                </li>
                <li class="slideitem">
                    <a>
                      
                        <img src="b.03.png">
                    </a>
                </li class="slideitem">
    
                <!-- 좌,우 슬라이드 버튼 -->
                <div class="slide-control">
                    <div>
                        <label for="slide03" class="left"></label>
                        <label for="slide02" class="right"></label>
                    </div>
                    <div>
                        <label for="slide01" class="left"></label>
                        <label for="slide03" class="right"></label>
                    </div>
                    <div>
                        <label for="slide02" class="left"></label>
                        <label for="slide01" class="right"></label>
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
        <a href="https://www.donga.com/news/Society/article/all/20200324/100316531/1"><img id="n" src="n.01.png"></a>
        <a href="https://magazine.hankyung.com/job-joy/article/202104306364d"><img id="n" src="n.02.png"></a>
        <a href="https://www.yna.co.kr/view/AKR20200615105800051"><img id="n" src="n.03.png"></a>
    </div>
    <div class="aside">
    <div class="left1">
        <h2>📌 BEST iTEALER</h2>
        <div class="user"><img id="user" src="user1.png" style="display:block;"><br/>보리밥<br/>채택률 98%</div>
        <div class="user"><img id="user" src="user2.png" style="display:block;"><br/>눈물<br/>채택률 86%</div>
        <div class="user"><img id="user" src="user3.png" style="display:block;"> <br/>말하는 감자<br/>채택률 83%</div>
    </div>
    <div class="left1">
        <h2>📌 최근 Q&A</h2>
        <div class="box1">
            <p> - 파이썬 자꾸 오류나는데 도와주실 분요 ㅠㅠㅠ</p>
            <p> - C언어 하고 있는데 어떻게 코드는 짜야할지 모르겠어요</p>
            <p> - 프로젝트 중인데 간단한 코드 도와주실 분 계신가요</p>
            <p> - 자바 스터디 같이하실 분 찾습니다!</p>
        </div>
    </div>
</div>
</body>
</html>