<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>position.jsp</title>
<%@ include file="/WEB-INF/views/common.jspf"%>
<style type="text/css">
.box {
	margin: 10px;
	width: 100px;
	height: 100px;
	background-color: rgb(10, 200, 100);
	transition-duration: 1s;
}

.moveright {
	top: 200px;
	left: 200px;
}

.absolute {
	position: absolute;
}

.fixed {
	position: fixed;
}

.relative {
	position: relative;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$('.box').click(function() {
			// alert("box clicked... count=" + $('.box').size()); 
			//size는 얘가 가지고 있는 dom객체의 갯수.
			$(this).css('left', '300px');
		});
	});//준비 핸들러
</script>
</head>
<body>
	<h1>position : static(default) | relative | absolute(페이지-document-
		기준) | fixed(보이는 기준)</h1>
	<!-- 모든 element는 static이다. -->
	<h2>left(x) | right | top(y) | bottom</h2>

	<div class="box moveright absolute">box1 absolute</div>
	<!-- static이라 그냥 moveright하면 안먹음.. -->
	<div class="box moveright fixed">box2 fixed</div>
	<div class="box moveright ">box3</div>
	<div class="box moveright relative">box4 relative</div>
	<!-- relative는 static일때(부모)의 상태가 원점이다. 그 후, css로 지정한 스타일에 따라 위치가 변하게 된다. -->

	<div class="w3-row">
		<!-- row는 전체를 차지한다. -->
		<div class="w3-col w3-half w3-green w3-padding">
			<!-- half는 화면을 절반 차지한다. -->
			<img alt="" src="http://www.placehold.it/200x300" width="100%">
			<!-- width를 100%로 하면 부모의 전체를 차지한다. -->
		</div>
		<div class="w3-col w3-half w3-blue w3-padding">
			<img alt="" src="http://www.placehold.it/200x300" width="100%">
		</div>
	</div>
</html>