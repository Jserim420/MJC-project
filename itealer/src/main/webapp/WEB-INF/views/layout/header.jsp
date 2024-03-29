<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>

<!DOCTYPE html>
<html>
<title>iTEALER</title>
<meta charset="utf-8">
<head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

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
	align-items: center;
}

a {
  text-decoration: none;
}

a:visited { 
color:black; 
}

a:link { 
color:black; 
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
	padding: 20px 20px;
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
}

.search-box:hover>.search-btn {
	background-color: #fff;
}

.search-txt {
	padding: 0;
	width: 0px;
	border: none;
	background: none;
	outline: none;
	float: left;
	font-size: 1rem;
	line-height: 30px;
}

.search-txt {
	width: 240px;
	padding: 0 6px;
}

section {
	margin: 0;
	padding: 0;
	width: max-content;
}

.section input[id*="slide"] {
	display: none;
}

.section .slidewrap {
	max-width: 1200px;
	margin: 0 auto;
}

.section .slidelist {
	white-space: nowrap;
	font-size: 0;
	overflow: hidden;
	position: relative;
}

.section .slidelist>li {
	display: inline-block;
	vertical-align: middle;
	width: 100%;
	transition: all .5s;
}

.section .slidelist>li>a {
	display: block;
	position: relative;
}

.section .slidelist>li>a img {
	width: 100%;
}

.section .slidelist label {
	position: absolute;
	z-index: 10;
	top: 50%;
	transform: translateY(-50%);
	padding: 50px;
	cursor: pointer;
}

.section .slidelist .textbox {
	position: absolute;
	z-index: 1;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	line-height: 1.6;
	text-align: center;
}

.section .slidelist .textbox h3 {
	font-size: 36px;
	color: #fff;;
	transform: translateY(30px);
	transition: all .5s;
}

.section .slidelist .textbox p {
	font-size: 16px;
	color: #fff;
	opacity: 0;
	transform: translateY(30px);
	transition: all .5s;
}

/* input에 체크되면 슬라이드 효과 */
.section input[id="slide01"]:checked ~ .slidewrap .slidelist>li {
	transform: translateX(0%);
}

.section input[id="slide02"]:checked ~ .slidewrap .slidelist>li {
	transform: translateX(-100%);
}

.section input[id="slide03"]:checked ~ .slidewrap .slidelist>li {
	transform: translateX(-200%);
}

/* input에 체크되면 텍스트 효과 */
.section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .textbox h3
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .2s;
}

.section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .textbox p
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .4s;
}

.section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .textbox h3
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .2s;
}

.section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .textbox p
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .4s;
}

.section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .textbox h3
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .2s;
}

.section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .textbox p
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .4s;
}

/* 좌,우 슬라이드 버튼 */
.slide-control>div {
	display: none;
}

.section .left {
	left: 30px;
	background: url('./img/left.png') center center/100% no-repeat;
}

.section .right {
	right: 30px;
	background: url('./img/right.png') center center/100% no-repeat;
}

.section input[id="slide01"]:checked ~ .slidewrap .slide-control>div:nth-child(1)
	{
	display: block;
}

.section input[id="slide02"]:checked ~ .slidewrap .slide-control>div:nth-child(2)
	{
	display: block;
}

.section input[id="slide03"]:checked ~ .slidewrap .slide-control>div:nth-child(3)
	{
	display: block;
}

/* 페이징 */
.slide-pagelist {
	text-align: center;
}

.slide-pagelist>li {
	display: inline-block;
	vertical-align: middle;
}

.slide-pagelist>li>label {
	display: block;
	padding: 8px 30px;
	border-radius: 30px;
	background: #ccc;
	margin: 20px 10px;
	cursor: pointer;
}

.section input[id="slide01"]:checked ~ .slidewrap .slide-pagelist>li:nth-child(1)>label
	{
	background: #999;
}

.section input[id="slide02"]:checked ~ .slidewrap .slide-pagelist>li:nth-child(2)>label
	{
	background: #999;
}

.section input[id="slide03"]:checked ~ .slidewrap .slide-pagelist>li:nth-child(3)>label
	{
	background: #999;
}

#n {
	width: 370px;
	height: 370px;
	padding-left: 15px;
	border-radius: 8%;
}

.news {
	margin-left: 40px;
	margin-bottom: 100px;
}

.left1 {
	float: left;
	margin-left: 60px;
	margin-bottom: 100px;
}

#user {
	width: 150px;
	height: 150px;
	border-style: solid;
	border-color: rgb(220, 204, 228);
	border-radius: 150px;
}

.user {
	float: left;
	text-align: center;
	margin-right: 20px;
}

.box1 {
	width: 550px;
	height: 200px;
	background-color: rgb(237, 226, 243);
	border-radius: 5px;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 20px;
}

section {
	padding-bottom: 500px;
	height ; 500px
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

ul, li {
	list-style: none;
	text-align: center;
	padding: 0;
	margin: 0;
}

#mainWrapper {
	margin-top: 100px;
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
}

#ulTable>li:first-child>ul>li {
	background-color: rgb(220, 204, 228);
	font-weight: bold;
	text-align: center;
}

#ulTable>li>ul {
	clear: both;
	padding: 0px auto;
}

#ulTable>li>ul>li {
	padding-top: 20px;
	float: left;
	font-size: 11pt;
	border-bottom: 1px solid rgb(220, 204, 228);
	height: 45px;
}

#ulTable>li>ul>li:first-child {
	width: 60%;
}

#ulTable>li>ul>li:first-child+li {
	width: 20%;
}

#ulTable>li>ul>li:first-child+li+li {
	width: 20%;
}

#divPaging {
	margin-top: 100px;
	clear: both;
	margin: 0 auto;
	width: 220px;
	height: 50px;
}

#divPaging>div {
	float: left;
	width: 30px;
	margin: 0 auto;
	text-align: center;
	margin-top: 100px;
	padding-bottom: 100px;
}

#liSearchOption {
	clear: both;
}

#liSearchOption>div {
	margin: 0 auto;
	margin-top: 30px;
	height: 100px;
	width: auto;
}

.left {
	text-align: left;
}

#selSearchOption {
	width: 70px;
	height: 30px;
	text-align: center;
	border-radius: 10px;
	border: 1px solid rgb(220, 204, 228);
}

#txtKeyWord {
	width: 300px;
	height: 30px;
	border-radius: 10px;
	border: 1px solid rgb(220, 204, 228);
}

#btn_search {
	background-color: rgb(220, 204, 228);
	color: black;
	border-radius: 10px;
	width: 80px;
	height: 35px;
	border-width: 0ch;
}

.btn_question {
	background-color: rgba(185, 157, 206, 0.6);
	border-radius: 10px;
	width: 400px;
	height: 50px;
	border-width: 0ch;
	margin-top: 30px;
	margin-left: 100px;
}

</style>
</head>

<header id="main-header">
	<a href="/"><img src="/img/iTEALER-001.png" width="250" , height="250" display: inline-block> </a>
	<div class="search-box">
		<input type="text" class="search-txt" name="" placeholder="검색"> <a class="search-btn" href="#"> <i class="fas fa-search"></i>
		</a>
	</div>
</header>
<nav id="main-navigation">
	<div class="pull-left">
		<ul class="outer-menu">
			<li class="outer-menu-item"><span class="menu-title">⬛ iTEALER</span>
				<ul class="inner-menu">
				 <li class="inner-menu-item"><a href="/board/pageForm">글목록</a></li>
                        <li class="inner-menu-item"><a href="/board/saveForm">글쓰기</a></li>
                        <li class="inner-menu-item"><a href="https://1drv.ms/p/s!AvhIrlCWvnX1h0tOcSBOc60sc71N?e=8sPZpZ">학습가이드</a></li>
                        <li class="inner-menu-item"><a href="#">Q&A</a></li>
				</ul>
			</li>
		
		<li class="outer-menu-item"><a class="menu-title" href="/">공지사항</a></li>
		<li class="outer-menu-item"><a class="menu-title" href="/board/study">스터디</a></li>
		<li class="outer-menu-item">
		<c:choose>
				<c:when test="${empty principal}">
					<li class="outer-menu-item"><a class="menu-title" href="/auth/loginForm">로그인</a></li>
					<li class="outer-menu-item"><a class="menu-title" href="/auth/joinForm">회원가입</a></li>
				</c:when>
				<c:otherwise>
					<li class="outer-menu-item"><a class="menu-title" href="/board/profile">마이페이지</a></li>
					<li class="outer-menu-item"><a class="menu-title" href="/logout">로그아웃</a></li>
				</c:otherwise>
			</c:choose></li>
		</ul>
		
	</div>
</nav>
<br />