<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>iTEALER</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<style>
html {
	margin-left: 300px;
	margin-right: 300px;
	width: 1250px;
	align-items: center;
}

form {
	margin-top: 200px;
	border: 3px solid #f1f1f1;
	margin-left: 350px;
	margin-right: 350px;
	margin-bottom: 300px;
}

input[type=text], input[type=password], input[type=int] {
	width: 100%;
	border-radius: 20px;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #ffec1f67;
	color: rgb(0, 0, 0);
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	border-radius: 20px;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 300px;
	height: 300px;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
}

.submit {
	background-color: #ffec1f67;
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
</style>

</head>
<body>

</body>
</html>