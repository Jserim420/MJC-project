<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp"%>

<!DOCTYPE html>
<html>
<title>iTEALER</title>
<head>
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
</head>
<style>
#mainWrapper {
   width: 1300px;
   margin: 0 auto;
}

#mainWrapper>ul>li:first-child {
   text-align: center;
   font-size: 14pt;
   height: 40px;
   vertical-align: middle;
   line-height: 30px;
}

#ulTable {
   margin-top: 10px;
   width: 1230px;
}

#ulTable>li:first-child>ul>li {
   background-color: rgba(185, 157, 206, 0.6);
   font-weight: bold;
   text-align: center;
}

#ulTable>li>ul {
   clear: both;
   padding: 0px auto;
   position: relative;
   min-width: 60px;
}

#ulTable>li>ul>li {
   float: left;
   font-size: 10pt;
   border-bottom: 2px solid silver;
   vertical-align: baseline;
   padding-top: 20px;
   padding-bottom: 20px;
}

#ulTable>li>ul>li:first-child {
   width: 10%;
} /*No 열 크기*/
#ulTable>li>ul>li:first-child+li {
   width: 45%;
} /*제목 열 크기*/
#ulTable>li>ul>li:first-child+li+li {
   width: 20%;
} /*작성일 열 크기*/
#ulTable>li>ul>li:first-child+li+li+li {
   width: 15%;
} /*작성자 열 크기*/
#ulTable>li>ul>li:first-child+li+li+li+li {
   width: 10%;
} /*조회수 열 크기*/
.divPaging {
   clear: both;
   margin-top: 50px;
   width: 1000px;
   height: 60px;
   padding-top: 30px;
   padding-bottom: 30px;
   margin-left: 180px;
   margin-right: 40px;

}

.btn_question {
   background-color: rgba(185, 157, 206, 0.6);
   border-radius: 10px;
   width: 300px;
   float: center;
   margin-left: 400px;
}



button {
   width: 100px;
   height: 40px;
   color: rgb(0, 0, 0);
   background: rgba(185, 157, 206, 0.6) font-size: 13px;
   border: none;
   border-radius: 15px;
   left: 85%;
   top: 79%;
}

.choose1 {
   float: left;
}

.choose2 {
   float: right;
   margin-right: 65px;
}
</style>
<body>

   <div id="mainWrapper">
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
      <div id="divPaging">
            
         </div>
<div class="choose1">
               <c:choose>
                  <c:when test="${boards.first}">
                     <li class="page-item disabled">
                        <a class="page-link" href="?page=${boards.number-1}">이전</a>
                     </li>
                  </c:when>
                  <c:otherwise>
                        <div class="page-item">
                           <a class="page-link" href="?page=${boards.number-1}">이전</a>
                        </div>
                  </c:otherwise>
                  </c:choose>
               </div>
               
               <div class="choose2">
                  <c:choose>
                     <c:when test="${boards.first}">
                        <div class="page-item disabled">
                           <a class="page-link" href="?page=${boards.number-1}">이후</a>
                        </div>
                     </c:when>
                     <c:otherwise>
                        <div class="page-item">
                           <a class="page-link" href="?page=${boards.number-1}">이후</a>
                        </div>
                     </c:otherwise>
                  </c:choose>
            </div>
         <a href="/board/saveForm"><button class="btn_question" >질문하기</button></a>
         
   </div>
</body>
</html>
<%@include file="../layout/footer.jsp"%>