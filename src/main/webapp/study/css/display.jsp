<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>display.jsp</title>
<%@ include file="/WEB-INF/views/common.jspf"%>
<style type="text/css">
/* inline은 높이 속성이 무시된다. block은 잘 됨. inline에게 높이속성을 주기 위해서는 inline: inline-block;을 주면 된다. 
display: none;은 아예 사라짐...*/
span, div {
	border: 1px solid red;
	height: 100px;
	width: 100px;
	/* 	margin: 50px 20px; */
}
/* div{
	display: inline;
} */ /* 
span {
	height: 100px;
} */
</style>

</head>
<body>
	<h1>display : inline | block | inline-block</h1>
	<h2>width | height</h2>
	<span>inline1</span>
	<!-- 	<span>inline-block</span> -->
	<span style="display: inline-block; vertical-align: bottom;">inline-block</span>
	<!-- vertical-align은 수직정렬에서. -->
	<span>inline3</span>
	<div>block1</div>
	<!-- 	<div style="display: none;">block2</div> -->
	<div>block2</div>
	<div>block3</div>
</body>
</html>