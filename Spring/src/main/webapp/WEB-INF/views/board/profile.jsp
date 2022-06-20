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
            $(document).ready(function () {
                $('.outer-menu-item').hover(function () {
                    $(this).find('.inner-menu').show();
                }, function () {
                    $(this).find('.inner-menu').hide();
                });
            });
        </script>
    </head>
   
                
    <style>
        
        {
        margin-left: 300px;
         margin-right: 300px;
        width: 1250px;
        align-items: center
        }
        
        #divStyle {
   display:inline-block;
   vertical-align:middle;
       }

       #divStyle2 {
            border: 1px solid rgb(237,237,239);
            border-radius: 10px;
            width: 1130px;
            top: 400px;
            box-shadow: 4px 4px rgba(237,237,239);
           }
            .wideLineHeight {
         line-height: 1.9;

      }
       #divStyle3 {
            border:1px;
            border-radius: 30px;
            padding: 10px;"
       }

    </style>

    <style type="text/css">
    div{
        font-size: 15px;
        color: #black;
        padding: 10px;
        margin: 15px; }

  .submit {
    background-color :#ffec1f67;
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
  .pull-left{
      padding: 0;
      margin: 0;
      display: flex;
      justify-content: left;
  }

        input[type=text], input[type=password], input[type=int] {
            width: 100%;
            border-radius: 20px;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            background-color :#00000009
          }
          
         button {
            background-color :#ffec1f67;
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
    height: 30px; line-height: 30px;
    text-align: center;
    padding: 5px 20px;
}

.inner-menu {
    display: none;
    position: absolute;
    top: 40px; left: 0;
    width: 100%;

    background: white;
    box-shadow: 0 2px 6px rgba(5, 5, 5, 0.9);
    z-index: 1000;

    text-align: center
}

.inner-menu-item > a {
    display: block;
    padding: 5px 10px;
    color: black
}

.inner-menu-item > a:hover {
    background:  rgb(185, 157, 206);
    color: white;
}


.search-box{
    padding: 10px;
    height: 30px;
    margin-top: 100px;
    background-color: #fff;
    border: 1px solid rgb(185, 157, 206);
    border-radius: 30px;
    transition: 0.4s;
    width:500px;
    float: right;
    position: relative;
  }
  
  .search-btn{
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
  .search-box:hover > .search-btn{
    background-color: #fff;
  }
  .search-txt{
    padding: 0;
    width: 0px;
    border:none !important;
    background: none;
    outline: none;
    float: left;
    font-size: 1rem;
    line-height: 30px;
    margin: 0 !important;
    height: 38px;
    background-color: white !important;
  }
  .search-txt{
    width: 240px;
    padding: 0 6px;
  }


</style>

</head>
<body>
    
    <div>
   <span id="divStyle"><img src="user.png" alt="img" width="90" height=90 
    vspace="20" hspace="20"></span>
   <span id="divStyle">
   보리<br>
    <p>
             채택률 100.0%
   </span>
    </div>

   <div>
   <span><b>내가 쓴 글</b></span><p>
    <div id="divStyle2">
        <p class="wideLineHeight"> 자바 진짜 모르겠다;;;;; 학교 과젠데 너무 어려움,,, 도와줄 사람 있으신가여,,?
        <br>다들 스터디 하세요? 저랑 자바 스터디 하실 분 모십니당~~~^^
        <br>데이터 베이스 간단한 과제인데 데베 잘하시는 분 있으신가용</br>
        </p>
   </div>

   <div class="container"></div>
<input type="text" placeholder="이름" name="uname" required>
<input type="text" placeholder="아이디" name="uname" required>
<input type="password" placeholder="비밀번호" name="psw" required>
<input type="int" placeholder="전화번호" name="uname" required>
<input type="text" placeholder="재학정보" name="uname" required>
<div class="submit">
    <a href="#">수정하기</a>
    </div>

</body>
</html>

<script src="/js/board.js"></script>
<%@include file="../layout/footer.jsp"%>