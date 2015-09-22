<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>animation.jsp</title>
<%@ include file="/WEB-INF/views/common.jspf"%>
<style type="text/css">
.box {
	width: 100px;
	height: 100px;
	background-color: orange;
	display: inline-block;
	vertical-align: middle;
}

.border {
	border: 10px solid red;
}

.padding {
	padding: 10px;
}

.boxsizing {
	box-sizing: border-box;
	/* 추가하는 옵션(padding등)을 box의 size에 포함한다. 즉, border까지의 크기가 box의 width로 바뀐다.*/
}

.box1_animation {
	animation: box1 3s infinite;
}

@keyframes box1 { 
	0% {
			width: 10px;
			transform: scale(0.5, 0.5) rotate(90deg) rotateY(90deg) rotateZ(90deg);
			background-color: red;
		}
	50%	{
			width: 100px;
			transform: scale(1,1) rotate(180deg) rotateY(180deg) rotateZ(180deg);
			background-color: blue;
		}
	100% {
			width: 200px;
			transform: scale(2,2) rotate(300deg) rotateY(300deg) rotateZ(300deg);
			background-color: green;
		}
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$('div').eq(0).on('mouseover', function(){
		$(this).eq(0).addClass('box1_animation');
	});
	$('div').eq(0).on('mouseout', function(){
		$(this).eq(0).removeClass('box1_animation');	
	});
});
</script>
</head>
<body>
	<h1>animation</h1>

	<div class="box border padding">box1</div>
	<div class="box">box2</div>
	<div class="box border padding boxsizing">box3</div>
</html>